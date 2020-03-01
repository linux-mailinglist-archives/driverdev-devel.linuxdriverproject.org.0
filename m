Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CA5174CFD
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Mar 2020 12:28:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 870D08506D;
	Sun,  1 Mar 2020 11:28:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aTeI76vNUHpy; Sun,  1 Mar 2020 11:28:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58A4E84ED7;
	Sun,  1 Mar 2020 11:28:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 448BD1BF3E0
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 11:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 415B28455D
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 11:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ld6oHggojbpn for <devel@linuxdriverproject.org>;
 Sun,  1 Mar 2020 11:28:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E489284545
 for <devel@driverdev.osuosl.org>; Sun,  1 Mar 2020 11:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583062077;
 bh=V9x9/p4WG/rpKs5F6o0VBgzej0iOeoMBXQKJZLNIEZo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=YNfHlNzJqwlDO4gtQCByWENu6ln//dfNmwZKULYsz81QA9Mb2djvtPu42sM3MwHgL
 OykMm6e3LIa5bIHCHvE+EUeuEI8nfzwW1i7ZX+tJkMbquY/98X5e8MPH8qH7F6vu6t
 VVQZLSlbJqMWse9QUV098Pu1mc+Iw4UNTXtdiC8Y=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MhlKs-1jd0g91cGW-00dmcJ; Sun, 01 Mar 2020 12:27:57 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Declare a few variables as __read_mostly
Date: Sun,  1 Mar 2020 12:26:20 +0100
Message-Id: <20200301112620.7892-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:6zcR7mN64S3xMLCbw+qN3jYVCShMX++6wg11VIG/bxYpBsi0lBJ
 CpRu5JBo9VkU6u6WIZifE3HJAPY9Sw7f1jd3KbnUcFPZVxHkb8u8RCyN0gq+JpwUyPKa8R/
 q6hoYIEc+zI8NlYjRXjFiuqgAh+CA/eH1BqCAgBJ0DQYoNIjIy7pgWwXp3ZJyFGRCcN6sAe
 cBBYTv0g/rFV0bGBgpF/A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:be5gT6ui9+A=:XF3Vb+ywqgWTD6t6G+DTrn
 XJ7O1AkjNXAAEAotCiONIMKDdK+t3Fq8oSZJAcPfbGRmdaMVPFmIPtj0+M+m4t49h20rtBu8K
 GY2BG70bDOq/RKuNnmypziUN9rDS2jQxEtvL8Xzek5BmtBcC3eqM4PZ4raIGi/ce9Xwt2erE1
 iKkXWfcXjx/+nVLltIr4Eiv7mqYBpAJyQx2qnK1F0qoY9Vi5aLScsZg+Dd4TVlf2BtxP/c+D5
 Qq0rf486n6l9IxbSsHvfhMxTg3Mjmd42wGMPit64HLPRt6ShqYM/VR88tvIFOMPOlIEtEFl3H
 eiC1ilAvuV1KwyHGIT22BLJNZW49JqkjI5eyi2odJPZR/wSk+G/ICwrzGfqcoC7ULp5droYM9
 9oWKBaH3TgClNMVvgpylvI9/6efY/zyqj0XUymAjPB7FKQp3bhaLTF5yV5N5h91A3crkcM/xg
 DvtGjyK5nFOILJySTZA7v76aZs+FcfNYGATfVbJM22MjSw0gpd1tokpHmla7lXxMIp3kqRyjw
 qHiNAV+e2SxEY1JFAAb+h4hLqvOX6aVQeBugsSUmjDzS0B5OHUGeOWjKSkbunjJRUC1xNj8xz
 LNiz5nVoIjcdSra4YVc/iKzFBYwwzMsum8ujHViwiFjbN0eaL95xOkxh2WCDkHXTgwWeA08DG
 CM4KjUJEIiNCBupRQya++lUVlSLh/8KJQp1LPG/82DhbhAIMN98x1QvVygsfM5FEBMnDYi0Jo
 iFNacHKq92n/7RKAjbQ7WGE9LdZrxyZ029uQ4pI4X8X/Et2Joefhvx6sxOJ/CAs9TwmmyQeGg
 vNKxxyS+ecMA5HYBfl8G+2LyiGGLAVGHG37XQj2y1FvOFURllM5IUNY+xUx7xdBBLrjrl9aeS
 piOTpK2i6onKAQZGc2NjPBP+77eBDz2gvfK1gLyJ8jcHTIv2jevYBUIsxI0cBXoGMB7N7BnMs
 Wd/DafTbjZJM8auFPdeDHt9duBdBHQLozUZxKqCjWEDNr01Lu9ISYDXwVRzHrpQ7icT5wjbsR
 cyrZNq94YZ3qmCQmK9vG3LZifxfAjDTcQ8Yh4ARaXHVU+6q+Bl3bfkjGHig5I84tOZWDgbjaq
 C4rnHjEnpNSwbl0lT/XDbygQB9VA3igrJIBmbcjcafUBk12fpTGzwLWmj3U2yGuC9awz3NlJ/
 ojeaPylbZ+MU4+4aE6T9BMAY1eJ2B1o/mtPNkMxuQwRRXJBzVnosdmXQeTRzND8D8yzi73o0b
 cXKpGja6mYP7hcHDq
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These include module parameters.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/main_usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 5e48b3ddb94c..701300202b21 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -49,12 +49,12 @@ MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION(DEVICE_FULL_DRV_NAM);

 #define RX_DESC_DEF0 64
-static int vnt_rx_buffers = RX_DESC_DEF0;
+static int __read_mostly vnt_rx_buffers = RX_DESC_DEF0;
 module_param_named(rx_buffers, vnt_rx_buffers, int, 0644);
 MODULE_PARM_DESC(rx_buffers, "Number of receive usb rx buffers");

 #define TX_DESC_DEF0 64
-static int vnt_tx_buffers = TX_DESC_DEF0;
+static int __read_mostly vnt_tx_buffers = TX_DESC_DEF0;
 module_param_named(tx_buffers, vnt_tx_buffers, int, 0644);
 MODULE_PARM_DESC(tx_buffers, "Number of receive usb tx buffers");

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
