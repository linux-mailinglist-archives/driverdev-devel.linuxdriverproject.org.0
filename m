Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71711159B42
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 22:38:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 403BC20528;
	Tue, 11 Feb 2020 21:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1win5Dk4tDaR; Tue, 11 Feb 2020 21:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E54722050E;
	Tue, 11 Feb 2020 21:38:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CCF51BF33F
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 21:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 89AA98494E
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 21:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uDQBgfHXsQuo for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 21:38:46 +0000 (UTC)
X-Greylist: delayed 00:24:20 by SQLgrey-1.7.6
Received: from gateway22.websitewelcome.com (gateway22.websitewelcome.com
 [192.185.47.163])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C94784867
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 21:38:46 +0000 (UTC)
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
 by gateway22.websitewelcome.com (Postfix) with ESMTP id 8F61B6296A
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 15:09:46 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 1cmwjHxaHvBMd1cmwjbZGp; Tue, 11 Feb 2020 15:09:46 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mk3WhDLxsBAaFhC3hPwZLxkMI8ikxsU22UXupLlwnzQ=; b=TQ2iQ4mxQ/zxiw55YX4zE6ENkG
 gr37828XhuokEXIdh6kaNm9wL8W0ZUFfzTdmTwDhkGTLL1oP5ESeKRp1X0wuErMEtSz6kuj/004IW
 leWNrd0MGv4euAT4o2g5CSGUEM5jk218ebG33eAxpHmLgUTnT2+dxYlvs8PxvoQsMgBgqOyBVzZFT
 9VcnKGG67izpf/Rk+1vMIKrHyONBajFAN5c+Lw6CJCBZ1f/Ub5l+exSY1k3nor+xaC8MesHki+nys
 dhO0pajaI8gZtEKXOdbk6U3GdZJoQ4TqSYYfo4ff3789I1XynLgOCruuCV+gsFlHL0cx/TC3BxAMJ
 624IRPSQ==;
Received: from [200.68.140.36] (port=2913 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1j1cmu-002Aqs-R0; Tue, 11 Feb 2020 15:09:44 -0600
Date: Tue, 11 Feb 2020 15:12:19 -0600
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: greybus: Replace zero-length array with
 flexible-array member
Message-ID: <20200211211219.GA673@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.140.36
X-Source-L: No
X-Exim-ID: 1j1cmu-002Aqs-R0
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [200.68.140.36]:2913
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 27
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertenly introduced[3] to the codebase from now on.

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/staging/greybus/raw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/raw.c b/drivers/staging/greybus/raw.c
index 838acbe84ca0..2b301b2aa107 100644
--- a/drivers/staging/greybus/raw.c
+++ b/drivers/staging/greybus/raw.c
@@ -30,7 +30,7 @@ struct gb_raw {
 struct raw_data {
 	struct list_head entry;
 	u32 len;
-	u8 data[0];
+	u8 data[];
 };
 
 static struct class *raw_class;
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
