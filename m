Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C832119166
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 21:02:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DB8687C6B;
	Tue, 10 Dec 2019 20:02:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VvOYwkDpfKAH; Tue, 10 Dec 2019 20:02:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5315A87942;
	Tue, 10 Dec 2019 20:02:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D39021BF2F2
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 20:02:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE5C48794F
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 20:02:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EN8ar+R2oP6X for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 20:02:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E3F5487942
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 20:02:01 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MRC3Y-1iQO6w3lB6-00NCmc; Tue, 10 Dec 2019 21:01:14 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: hp100: add back CONFIG_NET dependency
Date: Tue, 10 Dec 2019 21:00:52 +0100
Message-Id: <20191210200110.994059-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:+7Yu/LyZ/DDAc+hdUMCmrQTiZ9Z8tQKQouc+MwE9Tqy6NOcCjkr
 jU7XZlFizVeJeUVMyO2+l/oqxbNjs13gZjbCslIlycfem6n/UnUvv4wibz4fMO8uF7ydpvS
 8zTDBasJCiyCHqvt7u/j+iykuRysWCvOYBcLh11RH1mv/fYB2CS+su3IhnK7u/rQJK33qRG
 sfQcyOX4XweFh9agjsKSA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:sPhwV+30Z4w=:Tfk94g/xDVxgp5VMobrJ4M
 S+ec6kQCaIujpOAUHWfrYhdA3JQ0T4PUMwNwCgCH2hpaWCKt+tOWwflG65YB1u5s8ev/6knIr
 X6EfC4YBTsd4LU9EHDyPallDjdr+Ao3S08/xo9NYq/7/1yjV+ku/NEzA0EC1f7Bw3TQMfkG1m
 iJ+amkHWoxy8gsasWtzy+CB1J0O0spvRL/XHI1yuOz7bd7djvNN9fQQeLEh7o/giStqJzomt4
 uUsyrXg9Z6ZpKzViDzfRoiY8rFIwNRL2S0cCMs27f8hEEQxEDANlsZyvM8JmM3A+NSxIXXGDG
 pZKezdvjXWWh3PScoEiJmH0cj2fZtCKPPC/92UnEVUr0ZR5N1dFgkRDWQxqP6cbYMwfLiq+jw
 XdFaQm3OC9qqe3kvKfwr1WW5wqkkYzCG1AkMigADmlcQ8ECKj9ngDBQL65qUju1tqpo6rGsjW
 f+Htfu190Zq2GLf8VkxLPlG/MaJCNab4m18fTpSBrdOUGJFeI4Ea+8NmeN02vrwzlxjUfzSrA
 36sC0m4HaVp2IETl17XccJ3AJYpVYD4UsS14+GRQTO8DUaNmxGn+YqUHpgmb3pWh/97c3Cw70
 1OBsARa19mmVNRc0Ygv1vhPQpNyhOGEOZE5JwtuFtw29CN6Ng22nz9/uiUeQ72TBtaRErlhjY
 XnOmJ9BG3MZ0SqtUzlhZQrXwA7x+aznvljLBoP57tMeGr4wkJkJsxiV6GM5eNnmptfNJXddBg
 ytXapeELCnKzUksxsLB5VocLTDUX3AhP/ZsMvPpnDdPFLz3s9EFd861ZtdBSGjsW+xvKC7+SY
 74r0lNJW95tBgc/A1TnVJ0+oqLgEEu6O3RpqaD/Z6/47Vo6xTF93WLQpEAFHa0uQITjEVUNEi
 MxRu1XZpDbh5GpqT9b1w==
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>,
 Joe Perches <joe@perches.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The move to staging lost an important dependency:

ERROR: "eth_validate_addr" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "eth_mac_addr" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "alloc_etherdev_mqs" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "register_netdev" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "__skb_pad" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "consume_skb" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "dev_trans_start" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "__dev_kfree_skb_any" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "netif_rx" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "eth_type_trans" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "skb_trim" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "skb_put" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "__netdev_alloc_skb" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "free_netdev" [drivers/staging/hp/hp100.ko] undefined!
ERROR: "unregister_netdev" [drivers/staging/hp/hp100.ko] undefined!

Add it back explicitly.

Fixes: 52340b82cf1a ("hp100: Move 100BaseVG AnyLAN driver to staging")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/hp/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/hp/Kconfig b/drivers/staging/hp/Kconfig
index fb395cfe6b92..9566d4ab5ce5 100644
--- a/drivers/staging/hp/Kconfig
+++ b/drivers/staging/hp/Kconfig
@@ -6,6 +6,7 @@
 config NET_VENDOR_HP
 	bool "HP devices"
 	default y
+	depends on NET
 	depends on ISA || EISA || PCI
 	---help---
 	  If you have a network (Ethernet) card belonging to this class, say Y.
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
