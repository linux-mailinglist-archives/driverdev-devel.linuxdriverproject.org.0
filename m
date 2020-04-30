Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 970E11C0135
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 18:04:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 199FB25028;
	Thu, 30 Apr 2020 16:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M4rjvtHg8d4l; Thu, 30 Apr 2020 16:04:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 16F0A25014;
	Thu, 30 Apr 2020 16:04:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 124261BF2B7
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 16:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D64CE204FB
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 16:04:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iwXCOrhxBCf0 for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 16:04:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B7E8F203DC
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 16:04:36 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1A81208D5;
 Thu, 30 Apr 2020 16:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588262676;
 bh=htL5CBKoN0WCDcYQWi30eM6Fpz9wSc9gmJDRu0SQ/NI=;
 h=From:To:Cc:Subject:Date:From;
 b=unU5CxMku37iTcODJkr/My/DCiuY6c7gGAUz/nAMxHPid7wUgnKJN7TIkX32+xzAE
 LaNUyPunTxlMUmMWOxf8nrGoMgwV6nioZLtQ6AY+8pCNjmTJpZEtKL/ngWXECpueqz
 gmp7pUE+yyWwIAa56XTDl09fGP1NFHQBOR2lpjN0=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jUBft-00AxE8-VJ; Thu, 30 Apr 2020 18:04:33 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Subject: [PATCH 00/37] net: manually convert files to ReST format - part 2
Date: Thu, 30 Apr 2020 18:03:55 +0200
Message-Id: <cover.1588261997.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 David Howells <dhowells@redhat.com>, linux-sctp@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linux-afs@lists.infradead.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, Oliver Hartkopp <socketcan@hartkopp.net>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Jozsef Kadlecsik <kadlec@netfilter.org>,
 coreteam@netfilter.org, Jakub Kicinski <kuba@kernel.org>,
 Pablo Neira Ayuso <pablo@netfilter.org>, linux-x25@vger.kernel.org,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, linux-can@vger.kernel.org,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Remi Denis-Courmont <courmisch@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Ishizaki Kou <kou.ishizaki@toshiba.co.jp>, Florian Westphal <fw@strlen.de>,
 Neil Horman <nhorman@tuxdriver.com>, Geoff Levand <geoff@infradead.org>,
 netdev@vger.kernel.org, Vlad Yasevich <vyasevich@gmail.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rdma@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johannes Berg <johannes@sipsolutions.net>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

That's the second part of my work to convert the networking
text files into ReST. it is based on today's linux-next (next-20200430).

The full series (including those ones) are at:

	https://git.linuxtv.org/mchehab/experimental.git/log/?h=net-docs

I should be sending the remaining patches (another /38 series)
after getting those merged at -next.

The documents, converted to HTML via the building system are at:

	https://www.infradead.org/~mchehab/kernel_docs/networking/

Mauro Carvalho Chehab (37):
  docs: networking: convert l2tp.txt to ReST
  docs: networking: convert lapb-module.txt to ReST
  docs: networking: convert ltpc.txt to ReST
  docs: networking: convert mac80211-injection.txt to ReST
  docs: networking: convert mpls-sysctl.txt to ReST
  docs: networking: convert multiqueue.txt to ReST
  docs: networking: convert netconsole.txt to ReST
  docs: networking: convert netdev-features.txt to ReST
  docs: networking: convert netdevices.txt to ReST
  docs: networking: convert netfilter-sysctl.txt to ReST
  docs: networking: convert netif-msg.txt to ReST
  docs: networking: convert nf_conntrack-sysctl.txt to ReST
  docs: networking: convert nf_flowtable.txt to ReST
  docs: networking: convert openvswitch.txt to ReST
  docs: networking: convert operstates.txt to ReST
  docs: networking: convert packet_mmap.txt to ReST
  docs: networking: convert phonet.txt to ReST
  docs: networking: convert pktgen.txt to ReST
  docs: networking: convert PLIP.txt to ReST
  docs: networking: convert ppp_generic.txt to ReST
  docs: networking: convert proc_net_tcp.txt to ReST
  docs: networking: convert radiotap-headers.txt to ReST
  docs: networking: convert ray_cs.txt to ReST
  docs: networking: convert rds.txt to ReST
  docs: networking: convert regulatory.txt to ReST
  docs: networking: convert rxrpc.txt to ReST
  docs: networking: convert sctp.txt to ReST
  docs: networking: convert secid.txt to ReST
  docs: networking: convert seg6-sysctl.txt to ReST
  docs: networking: convert skfp.txt to ReST
  docs: networking: convert strparser.txt to ReST
  docs: networking: convert switchdev.txt to ReST
  docs: networking: convert tc-actions-env-rules.txt to ReST
  docs: networking: convert tcp-thin.txt to ReST
  docs: networking: convert team.txt to ReST
  docs: networking: convert timestamping.txt to ReST
  docs: networking: convert tproxy.txt to ReST

 .../admin-guide/kernel-parameters.txt         |    2 +-
 Documentation/admin-guide/serial-console.rst  |    2 +-
 Documentation/filesystems/afs.rst             |    2 +-
 Documentation/networking/bonding.rst          |    2 +-
 Documentation/networking/can.rst              |    2 +-
 .../networking/checksum-offloads.rst          |    2 +-
 Documentation/networking/index.rst            |   37 +
 Documentation/networking/ip-sysctl.rst        |    2 +-
 .../networking/{l2tp.txt => l2tp.rst}         |  145 ++-
 .../{lapb-module.txt => lapb-module.rst}      |  120 +-
 .../networking/{ltpc.txt => ltpc.rst}         |   45 +-
 ...1-injection.txt => mac80211-injection.rst} |   41 +-
 .../{mpls-sysctl.txt => mpls-sysctl.rst}      |   17 +-
 .../{multiqueue.txt => multiqueue.rst}        |   41 +-
 .../{netconsole.txt => netconsole.rst}        |  125 +-
 ...etdev-features.txt => netdev-features.rst} |   19 +-
 .../{netdevices.txt => netdevices.rst}        |   21 +-
 ...filter-sysctl.txt => netfilter-sysctl.rst} |   11 +-
 Documentation/networking/netif-msg.rst        |   95 ++
 Documentation/networking/netif-msg.txt        |   79 --
 ...ack-sysctl.txt => nf_conntrack-sysctl.rst} |   51 +-
 .../{nf_flowtable.txt => nf_flowtable.rst}    |   55 +-
 .../{openvswitch.txt => openvswitch.rst}      |   23 +-
 .../{operstates.txt => operstates.rst}        |   45 +-
 Documentation/networking/packet_mmap.rst      | 1084 +++++++++++++++++
 Documentation/networking/packet_mmap.txt      | 1061 ----------------
 .../networking/{phonet.txt => phonet.rst}     |   56 +-
 .../networking/{pktgen.txt => pktgen.rst}     |  316 ++---
 .../networking/{PLIP.txt => plip.rst}         |   43 +-
 .../{ppp_generic.txt => ppp_generic.rst}      |   52 +-
 .../{proc_net_tcp.txt => proc_net_tcp.rst}    |   23 +-
 ...iotap-headers.txt => radiotap-headers.rst} |   99 +-
 .../networking/{ray_cs.txt => ray_cs.rst}     |  101 +-
 Documentation/networking/{rds.txt => rds.rst} |  295 +++--
 .../{regulatory.txt => regulatory.rst}        |   29 +-
 .../networking/{rxrpc.txt => rxrpc.rst}       |  306 ++---
 .../networking/{sctp.txt => sctp.rst}         |   37 +-
 .../networking/{secid.txt => secid.rst}       |    6 +
 Documentation/networking/seg6-sysctl.rst      |   26 +
 Documentation/networking/seg6-sysctl.txt      |   18 -
 .../networking/{skfp.txt => skfp.rst}         |  153 ++-
 .../{strparser.txt => strparser.rst}          |   85 +-
 .../{switchdev.txt => switchdev.rst}          |  114 +-
 .../networking/tc-actions-env-rules.rst       |   29 +
 .../networking/tc-actions-env-rules.txt       |   24 -
 .../networking/{tcp-thin.txt => tcp-thin.rst} |    5 +
 .../networking/{team.txt => team.rst}         |    6 +
 .../{timestamping.txt => timestamping.rst}    |  154 ++-
 .../networking/{tproxy.txt => tproxy.rst}     |   55 +-
 MAINTAINERS                                   |   14 +-
 drivers/net/Kconfig                           |    4 +-
 drivers/net/appletalk/Kconfig                 |    2 +-
 drivers/net/ethernet/toshiba/ps3_gelic_net.c  |    2 +-
 drivers/net/ethernet/toshiba/spider_net.c     |    2 +-
 drivers/net/fddi/Kconfig                      |    2 +-
 drivers/net/plip/Kconfig                      |    2 +-
 drivers/net/wireless/Kconfig                  |    2 +-
 drivers/staging/fsl-dpaa2/ethsw/README        |    2 +-
 include/linux/netdev_features.h               |    2 +-
 include/net/cfg80211.h                        |    2 +-
 include/uapi/linux/errqueue.h                 |    2 +-
 net/Kconfig                                   |    2 +-
 net/core/pktgen.c                             |    2 +-
 net/lapb/Kconfig                              |    2 +-
 net/mac80211/tx.c                             |    2 +-
 net/netfilter/Kconfig                         |    2 +-
 net/rxrpc/Kconfig                             |    6 +-
 net/rxrpc/sysctl.c                            |    2 +-
 net/wireless/radiotap.c                       |    2 +-
 samples/pktgen/README.rst                     |    2 +-
 70 files changed, 2864 insertions(+), 2357 deletions(-)
 rename Documentation/networking/{l2tp.txt => l2tp.rst} (79%)
 rename Documentation/networking/{lapb-module.txt => lapb-module.rst} (74%)
 rename Documentation/networking/{ltpc.txt => ltpc.rst} (86%)
 rename Documentation/networking/{mac80211-injection.txt => mac80211-injection.rst} (67%)
 rename Documentation/networking/{mpls-sysctl.txt => mpls-sysctl.rst} (82%)
 rename Documentation/networking/{multiqueue.txt => multiqueue.rst} (76%)
 rename Documentation/networking/{netconsole.txt => netconsole.rst} (66%)
 rename Documentation/networking/{netdev-features.txt => netdev-features.rst} (95%)
 rename Documentation/networking/{netdevices.txt => netdevices.rst} (89%)
 rename Documentation/networking/{netfilter-sysctl.txt => netfilter-sysctl.rst} (62%)
 create mode 100644 Documentation/networking/netif-msg.rst
 delete mode 100644 Documentation/networking/netif-msg.txt
 rename Documentation/networking/{nf_conntrack-sysctl.txt => nf_conntrack-sysctl.rst} (85%)
 rename Documentation/networking/{nf_flowtable.txt => nf_flowtable.rst} (76%)
 rename Documentation/networking/{openvswitch.txt => openvswitch.rst} (95%)
 rename Documentation/networking/{operstates.txt => operstates.rst} (87%)
 create mode 100644 Documentation/networking/packet_mmap.rst
 delete mode 100644 Documentation/networking/packet_mmap.txt
 rename Documentation/networking/{phonet.txt => phonet.rst} (82%)
 rename Documentation/networking/{pktgen.txt => pktgen.rst} (62%)
 rename Documentation/networking/{PLIP.txt => plip.rst} (92%)
 rename Documentation/networking/{ppp_generic.txt => ppp_generic.rst} (91%)
 rename Documentation/networking/{proc_net_tcp.txt => proc_net_tcp.rst} (83%)
 rename Documentation/networking/{radiotap-headers.txt => radiotap-headers.rst} (70%)
 rename Documentation/networking/{ray_cs.txt => ray_cs.rst} (65%)
 rename Documentation/networking/{rds.txt => rds.rst} (59%)
 rename Documentation/networking/{regulatory.txt => regulatory.rst} (94%)
 rename Documentation/networking/{rxrpc.txt => rxrpc.rst} (85%)
 rename Documentation/networking/{sctp.txt => sctp.rst} (64%)
 rename Documentation/networking/{secid.txt => secid.rst} (87%)
 create mode 100644 Documentation/networking/seg6-sysctl.rst
 delete mode 100644 Documentation/networking/seg6-sysctl.txt
 rename Documentation/networking/{skfp.txt => skfp.rst} (68%)
 rename Documentation/networking/{strparser.txt => strparser.rst} (80%)
 rename Documentation/networking/{switchdev.txt => switchdev.rst} (84%)
 create mode 100644 Documentation/networking/tc-actions-env-rules.rst
 delete mode 100644 Documentation/networking/tc-actions-env-rules.txt
 rename Documentation/networking/{tcp-thin.txt => tcp-thin.rst} (97%)
 rename Documentation/networking/{team.txt => team.rst} (67%)
 rename Documentation/networking/{timestamping.txt => timestamping.rst} (89%)
 rename Documentation/networking/{tproxy.txt => tproxy.rst} (70%)

-- 
2.25.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
