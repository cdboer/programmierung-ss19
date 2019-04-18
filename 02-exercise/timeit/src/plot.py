import matplotlib.pyplot as plt
import argparse as ap

def serialize(part):
    d = {}
    for line in part.splitlines():
        if not line.strip("\n "): continue
        k, v = line.split()
        d[k] = v

    def normalize(d):
        def to_seconds(s):
            m, s = s.replace(',', '.').split('m')
            return float(m)*60 + float(s[:-1])

        return {int(k):to_seconds(v) for k,v in d.items()}

    return normalize(d)

if __name__ == '__main__':
    parser = ap.ArgumentParser(description='Plot a prepend/append log file')
    parser.add_argument('log', metavar='LOGFILE', help='append/prepend times logfile')
    parser.add_argument('plot_name', help='file name for plot')
    args = parser.parse_args()
    
    # split into first half(prepending) and second half(appending)
    with open(args.log) as f:
        pre_part, app_part = f.read().split('HALFTIME')

    # serialize
    pre = serialize(pre_part)
    app = serialize(app_part)
    
    # plot
    values = list(pre.values()) + list(app.values())
    
    mink, maxk = min (pre.keys()), max (pre.keys())
    minv, maxv = 0, max (values)
    diff = list(pre.keys())[1] - mink

    # plt.figure(figsize=(15, 5))
    plt.plot(range(mink, maxk+1, diff), list(pre.values()), label=':')
    plt.plot(range(mink, maxk+1, diff), list(app.values()), label='++')

    plt.legend()
    plt.xlabel('NOO - Number of operations')
    plt.ylabel('CPU time (s)')
    plt.axis([mink, maxk, minv, maxv+(maxv/10)])

    # save plot
    plt.savefig('plots/{}.pdf'.format(args.plot_name))
    plt.savefig('plots/{}.png'.format(args.plot_name))
    plt.savefig('plots/{}.svg'.format(args.plot_name))

