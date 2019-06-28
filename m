Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A8259BEA
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 14:45:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E491844B3;
	Fri, 28 Jun 2019 12:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pfdzveqm8mjx; Fri, 28 Jun 2019 12:45:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A3A168454F;
	Fri, 28 Jun 2019 12:45:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B5C8F1BF385
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 12:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B2B6E864EF
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 12:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5o2iBsyUfdwP for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 12:45:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 743C48633B
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 12:45:28 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MSbp1-1i9oCT1Vaz-00Syc4; Fri, 28 Jun 2019 14:38:36 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kees Cook <keescook@chromium.org>, James Morris <jmorris@namei.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Subject: [PATCH 1/4] [v2] structleak: disable STRUCTLEAK_BYREF in combination
 with KASAN_STACK
Date: Fri, 28 Jun 2019 14:37:46 +0200
Message-Id: <20190628123819.2785504-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:Vyv7hDWAtsub/JNqLOHsg4FkzINNTOEYL230tDKN/RItqenQapP
 gyiBCpoLRRoTqs8Tv2p30vIpq0szU20cz8WHVZAjO+wDA1cj9+wZTfO8K4w5U23pnLNweti
 UywkJH8BUfN6F1OQXF9XsDDZcZtuJH4mRwHl7vS8Crfb6pptLcNlGI4ZF0Y6qEGx/xprLOw
 3JJuBgcheAN7frqGyD/ng==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ndDuR7rpm3A=:/ZcIhHJfeRu6ID0xoACKdl
 ss0e1xMaCaZpHn581clQU19S9tU7Siqud0D7wsbbdBQ6xxGHi65erfZ/PyAW9b0/CM0atxe++
 nMP4g0aj/LG0x83qVXPh9Tu1Q1UYlzdxibBBavRDnIohkcvK52QCi7MNNQDoU/0Tit6kg4xkx
 2Cuy/VERrWx6SNJDmBEdZmyAOKr3vrIhQrr98bpRRLLSk9CiOkGg4tu3hXCEMZFexrO4PVHQv
 ELU1CB1TtopL8s7xLsypq/2P+KwwQz8qrPL5yV2psFdSl5QYOWX40xX75b+pv2cVZOwYZFfbP
 E09h1/WQa7Fm+pmLLQvKQXbBljqGzyJEq457XvMzThHDOrBkuXxn1ZG8CBe3nKSQxlQgHjA5c
 nNkEHAJpt7Yqf3x3Yv2tdMwRFtPi3ZRSqOFJdv2bYrL9HR2RxjjlOw9Rsv5HfU1TUMS484Bd4
 wZiOqxPYtL2m218t2VV5CcmC3mS+mLKcz0HICChFc1AkJWWbgogZg6D29UYBTDMgszANDq9JK
 qLY7Y6KIg74Qoov3veWsN+6lJ/1OnvYg16Y1gE3rIlyK0NS+817X/eYTXajKspgjSYAwtRPl1
 8VmvtYN7lMVZHVhODzyfIb9h0cUgTeoIgwtQt/L6vLc4WyiSpVqQkSoFCMPv1sP3TKJvn5rKd
 teHm+susVvxQ0yxZf4PkFyK1Zt7tfBOEbsBbc5ZkMGSTu5pc5ujaeRZNdrl1/18l0PH12cJky
 fLK0fWC3IYAaD9g2eDUrmVMRIx1WiNmZFYc4iw==
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
Cc: Michal Hocko <mhocko@suse.cz>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Alexander Potapenko <glider@google.com>, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, James Smart <james.smart@broadcom.com>,
 lvs-devel@vger.kernel.org, Julian Anastasov <ja@ssi.bg>,
 coreteam@netfilter.org, Pablo Neira Ayuso <pablo@netfilter.org>,
 Wensong Zhang <wensong@linux-vs.org>, Dick Kennedy <dick.kennedy@broadcom.com>,
 Arnd Bergmann <arnd@arndb.de>, "James E . J . Bottomley" <jejb@linux.ibm.com>,
 Simon Horman <horms@verge.net.au>, Thomas Gleixner <tglx@linutronix.de>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, netfilter-devel@vger.kernel.org,
 netdev@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 "David S . Miller" <davem@davemloft.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The combination of KASAN_STACK and GCC_PLUGIN_STRUCTLEAK_BYREF
leads to much larger kernel stack usage, as seen from the warnings
about functions that now exceed the 2048 byte limit:

drivers/media/i2c/tvp5150.c:253:1: error: the frame size of 3936 bytes is larger than 2048 bytes
drivers/media/tuners/r820t.c:1327:1: error: the frame size of 2816 bytes is larger than 2048 bytes
drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_n.c:16552:1: error: the frame size of 3144 bytes is larger than 2048 bytes [-Werror=frame-larger-than=]
fs/ocfs2/aops.c:1892:1: error: the frame size of 2088 bytes is larger than 2048 bytes
fs/ocfs2/dlm/dlmrecovery.c:737:1: error: the frame size of 2088 bytes is larger than 2048 bytes
fs/ocfs2/namei.c:1677:1: error: the frame size of 2584 bytes is larger than 2048 bytes
fs/ocfs2/super.c:1186:1: error: the frame size of 2640 bytes is larger than 2048 bytes
fs/ocfs2/xattr.c:3678:1: error: the frame size of 2176 bytes is larger than 2048 bytes
net/bluetooth/l2cap_core.c:7056:1: error: the frame size of 2144 bytes is larger than 2048 bytes [-Werror=frame-larger-than=]
net/bluetooth/l2cap_core.c: In function 'l2cap_recv_frame':
net/bridge/br_netlink.c:1505:1: error: the frame size of 2448 bytes is larger than 2048 bytes
net/ieee802154/nl802154.c:548:1: error: the frame size of 2232 bytes is larger than 2048 bytes
net/wireless/nl80211.c:1726:1: error: the frame size of 2224 bytes is larger than 2048 bytes
net/wireless/nl80211.c:2357:1: error: the frame size of 4584 bytes is larger than 2048 bytes
net/wireless/nl80211.c:5108:1: error: the frame size of 2760 bytes is larger than 2048 bytes
net/wireless/nl80211.c:6472:1: error: the frame size of 2112 bytes is larger than 2048 bytes

The structleak plugin was previously disabled for CONFIG_COMPILE_TEST,
but meant we missed some bugs, so this time we should address them.

The frame size warnings are distracting, and risking a kernel stack
overflow is generally not beneficial to performance, so it may be best
to disallow that particular combination. This can be done by turning
off either one. I picked the dependency in GCC_PLUGIN_STRUCTLEAK_BYREF
and GCC_PLUGIN_STRUCTLEAK_BYREF_ALL, as this option is designed to
make uninitialized stack usage less harmful when enabled on its own,
but it also prevents KASAN from detecting those cases in which it was
in fact needed.

KASAN_STACK is currently implied by KASAN on gcc, but could be made a
user selectable option if we want to allow combining (non-stack) KASAN
with GCC_PLUGIN_STRUCTLEAK_BYREF.

Note that it would be possible to specifically address the files that
print the warning, but presumably the overall stack usage is still
significantly higher than in other configurations, so this would not
address the full problem.

I could not test this with CONFIG_INIT_STACK_ALL, which may or may not
suffer from a similar problem.

Fixes: 81a56f6dcd20 ("gcc-plugins: structleak: Generalize to all variable types")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
[v2] do it for both GCC_PLUGIN_STRUCTLEAK_BYREF and GCC_PLUGIN_STRUCTLEAK_BYREF_ALL.
---
 security/Kconfig.hardening | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
index a1ffe2eb4d5f..af4c979b38ee 100644
--- a/security/Kconfig.hardening
+++ b/security/Kconfig.hardening
@@ -61,6 +61,7 @@ choice
 	config GCC_PLUGIN_STRUCTLEAK_BYREF
 		bool "zero-init structs passed by reference (strong)"
 		depends on GCC_PLUGINS
+		depends on !(KASAN && KASAN_STACK=1)
 		select GCC_PLUGIN_STRUCTLEAK
 		help
 		  Zero-initialize any structures on the stack that may
@@ -70,9 +71,15 @@ choice
 		  exposures, like CVE-2017-1000410:
 		  https://git.kernel.org/linus/06e7e776ca4d3654
 
+		  As a side-effect, this keeps a lot of variables on the
+		  stack that can otherwise be optimized out, so combining
+		  this with CONFIG_KASAN_STACK can lead to a stack overflow
+		  and is disallowed.
+
 	config GCC_PLUGIN_STRUCTLEAK_BYREF_ALL
 		bool "zero-init anything passed by reference (very strong)"
 		depends on GCC_PLUGINS
+		depends on !(KASAN && KASAN_STACK=1)
 		select GCC_PLUGIN_STRUCTLEAK
 		help
 		  Zero-initialize any stack variables that may be passed
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
