Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4FD8506D4
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Feb 2024 23:10:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EC6D60627;
	Sat, 10 Feb 2024 22:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UKVmu-q_6UWd; Sat, 10 Feb 2024 22:10:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C06CE6062F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C06CE6062F;
	Sat, 10 Feb 2024 22:10:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 32A6B1BF290
 for <devel@linuxdriverproject.org>; Sat, 10 Feb 2024 22:10:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1E53E404AF
 for <devel@linuxdriverproject.org>; Sat, 10 Feb 2024 22:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TK4afkuUyYdi for <devel@linuxdriverproject.org>;
 Sat, 10 Feb 2024 22:09:59 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=203.124.39.171;
 helo=symantec7.comsats.net.pk; envelope-from=naseer.a@kam-network.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6394A40445
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6394A40445
Received: from symantec7.comsats.net.pk (symantec7.comsats.net.pk
 [203.124.39.171])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6394A40445
 for <devel@driverdev.osuosl.org>; Sat, 10 Feb 2024 22:09:56 +0000 (UTC)
X-AuditID: cb7c27ab-549c6700000035dd-66-65c7f370cfce
Received: from host202003.comsatshosting.com (host202003.comsatshosting.com
 [203.124.44.148])
 by symantec7.comsats.net.pk (Symantec Messaging Gateway) with SMTP id
 1D.26.13789.073F7C56; Sun, 11 Feb 2024 03:06:43 +0500 (PKT)
To: undisclosed-recipients:;
Message-ID: <1D.26.13789.073F7C56@symantec7.comsats.net.pk>
From: "Anna Pechorin"<naseer.a@kam-network.com>
Subject: NO DELAYS
Date: Sat, 10 Feb 2024 17:09:22 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-Brightmail-Tracker: H4sIAAAAAAAAA03SbUxTdxQG8PzvS2/LaLyUZruwqaGEzeEEIW47C4Ro5ubNNtkkxiVs4hq8
 UwItXQsEyF4oOKA4S7EIUmSjDOoEysTCENykwU60soJsiuNFLYhYy3gpMQpRMkq3hG+/k/Pk
 yflw+LjoKhnMT5FncEq5NE3C8yOuffla+RbVQi+3ddEWC+4/2ki4UmHH4dyjUKg7poJJyyyC
 ywVpMPRDMQ6d40Uk/Hl3lAcL1TlwzzyNYLymFAPTfRsOus5OEtrOZEK/1YCBo5aBSpcRwbK9
 gYSGvkUMZlqHcTDPzeMwtFhHgK3wLgWe7mkMDEdv8KDV/CpcuCmDtqEFCipPnqXg26l+HO6Y
 HBjofr+Jw+j1KRI6PacJsFemgUuTtzJVDGGg6bfg8GvfErUyniBgrsOFwS1TFw7z1joEY2du
 UdBtKcegP38cA7XRTYH+QiOCOn0etT2aLXvcSLHO7tfZatMRiv1poIRknYZNrK11lmR7ix+Q
 7MzwdxSrPtGMs7P5f/NYl3qSYlucesQu1TaQ7O2Llwi2rNdKsU8c32MfbU30iz3IpaVkccrI
 uM/8Dh/VPeAprM9lV3c1kXnIIihBAj5Db2POuu14CfLji2gnYtzHlynvQky/xNRUT5Bei+hQ
 xnGpZtVCOob5sVa3muHRkYxF3czzOpAWMR7XHOY1QYcxN54s4b58AHO16h7hNU5HM+2L07jP
 G5mOf07hviOEzMmiScLnIKagafw/RzPawinKZ2AGrl1HOrTOsKbWsKbWsKa2FuGNiFHlyKQr
 /5X8ZkRyukwlzVBFyLmMCEXqObT6ba80nUcXy9WRPQjjox7E8HGJWLi33saJhAelObmcMv2A
 MjONU/WgF/mE5AWhYn0KJ6IPSTO4VI5TcMr/txhfEJyH/ZU1OSwQ22Q5p/S7jYWCr+NN5qDo
 5tth2+kvHrWna7v27lyWfyXYn5SU6PwwMN0z/cHoN7ty3x2ODX76uK+8tGJ20/0sY0FLlMZs
 c27++D3/SI2jZc9p00zNhonNzzcc2tYRkB2SX2Xp2llq7fGEtycM3vHTi7GquLH4Z29Rl9cR
 /onvT1qPKcaCdEn11iu/yGNT14cE9H0ikRxxxox9ape55ozPHobXlxUPWDdSQVHSbtS6L/Cd
 HSPhB0ZC4xUJ4srBbPdvuTGyl/dgPz+d755PiOjc/7m2bUfT2xNmdmSD//nd7SnaN8hBSbI4
 zNK4RTMS8jBrV6ayOTV7YV9RHNuslRCqw9KocFypkv4LLDB39twDAAA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=kam-network.com
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
Reply-To: anna.pechorin@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello

I hope you are well and high in spirit? Before I continue, let me humbly apologize for coming into your space unsolicited. Nonetheless, I take solace in the fact that it is with the best intention and for our mutual benefit.

I chose you among other contacts that I came across in my search for someone who can partner with me in investment venture. It took a great deal of brain storming for me to arrive at this decision owing to my present predicament and solitude courtesy President Vladimir Putin, which I will explain to you in my follow up email. I hope that my contact with you will be private, confidential and fruitful.

Presently I am totally indisposed to carry out financial transactions due to restrictions relating to the suspicious death of my husband, Ivan Pechorin who was totally against the Ukraine war. Before long it would be discovered that President Vladimir Putin murdered my husband. My strongest desire is to partner with you in investing my family money domiciled outside the shores of Russia and you becoming my fund manager. I have no problem investing this money in your country if it offers investment friendly environment.

It will be an absolute pleasure, if you would have the wherewithal to handle this project to my satisfaction. Every detail concerning this project would be laid bare to you upon indication of your interest.

Please strictly respond to anna.pechorin@yahoo.com


Best regards

Anna Pechorin.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
