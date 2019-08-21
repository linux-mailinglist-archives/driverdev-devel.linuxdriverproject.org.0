Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 657DB979AA
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 14:40:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D206F87DA1;
	Wed, 21 Aug 2019 12:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rPRtSTKUaf0i; Wed, 21 Aug 2019 12:40:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E53F887D93;
	Wed, 21 Aug 2019 12:40:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B84EB1BF326
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 12:40:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B506E86DB2
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 12:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4lTtu0RoxV1y for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 12:40:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [212.227.15.14])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C5E686DAF
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 12:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1566391239;
 bh=j13ik0r9D3GxR/mCVO6BCOcAiygxrC3H4cfMTpAAChg=;
 h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
 b=LGwDntPUxCpMC1LzBKSeCJduhhkw/eah7b+e5XA6+MhZ081mKSQOrtF/VTt5ynVMz
 2V3bcphiiIVQTV96qfE3nHie0KCSd/n+ecDjyXIqoJoX6Fo4/X9kH2xn98J6tcMgzZ
 LzeUKz7L+ZmN8XHBY98no+ajXjEV3y3M85krIPSQ=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.9.44]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0MNcHy-1huL7726Go-007BvI; Wed, 21
 Aug 2019 14:40:39 +0200
To: devel@driverdev.osuosl.org, Branden Bonaby <brandonbonaby94@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Tim Collier <osdevtc@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: =?UTF-8?Q?=5bPATCH=5d_staging/wlan-ng/hfa384x=3a_Delete_an_unnecess?=
 =?UTF-8?Q?ary_check_before_the_macro_call_=e2=80=9cdev=5fkfree=5fskb?=
 =?UTF-8?B?4oCd?=
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <81d89576-512e-2374-2708-0d22400a37a3@web.de>
Date: Wed, 21 Aug 2019 14:40:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:Khr3WUzQjhOsIUOYqYf9Wl5vqN2OW/JZvszBYvvyKWx/XYdNoWB
 sK9b4A7o27NSAqPaSh+YekogEaaZsT0AKEH/LataRvVRd/9V+1+GhPlxZDMXZrfvf45Cmv5
 pZ7pNPBtXLM9yCjB9wm5oJvLkpgkkldfxPkrmW0YxJE3WuIYmWN7o/lSLdhXS8OTe9Xmjfu
 5KXkiwN0X+utW4G7bHg6g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:urfMUckZqPE=:n+1FnxQOMqEwl7xYjwXKGq
 ezoEg04kcprkeMZnLg08sppDQcuqDIfaJF5kY3NEMcMtXgDoxOYZXXLtF7T7P95Z1M+Vu7BZM
 dmrX7I38hY1DwPA7sg1AL7XRIm6iTYfAuoSjCmqrM+Rzqc8/GrXzsQOt3EvHHo6TQTMYwUAtV
 aWT/C0PWUJTxsHzRNQzEwdKmyOVAtAbkFPiK77ONmNA1uWUGMAOXkQwrc936fFOhTevpP3KCk
 +CKVnplTs/yLFlHAuMurlJc9xHmpYkVWS0SRcsXdMcZ6BhqJwRqkzgau+jzXFdvbaqC29iXPU
 vL/34ISAFYUfB7Xwj39Obsi9OBOs3lIi/xo8McnrLXCfitTWMmCBZG/G8RYdh8zXpKLKiJ9zh
 nVnhIfV+u2sNP1iE5eCZTDojeLOAcG5gECSM1dta2MQFg84ujtPAP30kvLUHDE710wpfULGEN
 lODibzOQwvR9A4dnnVKJwbd/WiDX+4tAtr3PWUCLcyh16Tla8C8vbpJ404lfG8CeZRsyqRCk3
 MSjz68eAdUwWXpHvP6d/reS8VA8wj0Z7eroT6WBp3d5Pt0kYrQyXjfN6gXVzJWTwEGdy0NWEG
 qW5sHpdd/l6bHzlzWyD+PJJG6ebcP+RQelRdJZ1v2wTBMZCJIW5jOKqdcIrnjzOCY8kuUOqM5
 XezPGGRxD0dW0OsPxyA/Jjew3w7zwykUi0OUIMSWbNgTrqvBt6jB/+cy0UExkGXhEG7gFJFo0
 jitB4mw8KB91AVDxWWPaAmIRGiRBp1aUIRO4CBwD638gxCClRDHvHPyDFEfNcDWKLMpMbX5fR
 ZMkpOZln/CvUgnQkzwPhACBXG0v+hyFnpgS5z12fsg6Q4ZCAoXlbm4VOEoC1jyHAbtwj3ibeZ
 r53HtLA0C1IiDkvb3KEmYGKQGBxDpmK98+9u70dLLGel0KkpuoDXiQHW94S/DP2qp2ePkxm+D
 /+v/VJGpXWpA9zE2lU9UW7sagWI3jErYNxrdQTKJsRzIQtALsiC1y8WRIrJfmPTq+VFlT8bxJ
 JFgvxy5qINZnWigwhQ8BbX1knjhqdiImRAtcD6Y5Tlguyc+Zin4O7oYz1fe5THWZfD7Dn35kv
 z/N6PV9hUBxCA7WuMuZ9PjOnjLaUL5rprNzzK1GaLjyH36A7cs+jrNWvjCa8DStogtUN4CFQE
 /jzG8=
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Wed, 21 Aug 2019 14:30:30 +0200

The dev_kfree_skb() function performs also input parameter validation.
Thus the test around the call is not needed.

This issue was detected by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 28d372a0663a..54f631c4155a 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -3070,9 +3070,7 @@ static void hfa384x_usbin_callback(struct urb *urb)
 	}			/* switch */

 exit:
-
-	if (skb)
-		dev_kfree_skb(skb);
+	dev_kfree_skb(skb);
 }

 /*----------------------------------------------------------------
--
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
