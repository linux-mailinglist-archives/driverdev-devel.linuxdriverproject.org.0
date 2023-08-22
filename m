Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A36784CB7
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Aug 2023 00:09:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D6ED4003B;
	Tue, 22 Aug 2023 22:09:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D6ED4003B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ykGQOGXpzzEk; Tue, 22 Aug 2023 22:09:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0731040059;
	Tue, 22 Aug 2023 22:09:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0731040059
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91E771BF2F9
 for <devel@linuxdriverproject.org>; Tue, 22 Aug 2023 22:09:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 75EAB401F1
 for <devel@linuxdriverproject.org>; Tue, 22 Aug 2023 22:09:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 75EAB401F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jZFN0mxY7FDS for <devel@linuxdriverproject.org>;
 Tue, 22 Aug 2023 22:09:34 +0000 (UTC)
X-Greylist: delayed 906 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 22 Aug 2023 22:09:33 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10D2440003
Received: from symantec4.comsats.net.pk (symantec4.comsats.net.pk
 [203.124.41.30])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 10D2440003
 for <devel@driverdev.osuosl.org>; Tue, 22 Aug 2023 22:09:32 +0000 (UTC)
X-AuditID: cb7c291e-06dff70000002aeb-fe-64e519aaf01b
Received: from iesco.comsatshosting.com (iesco.comsatshosting.com
 [210.56.28.11])
 (using TLS with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 by symantec4.comsats.net.pk (Symantec Messaging Gateway) with SMTP id
 9B.E1.10987.AA915E46; Wed, 23 Aug 2023 01:25:14 +0500 (PKT)
Received: from [94.156.6.90] (UnknownHost [94.156.6.90]) by
 iesco.comsatshosting.com with SMTP; Wed, 23 Aug 2023 01:15:24 +0500
Message-ID: <9B.E1.10987.AA915E46@symantec4.comsats.net.pk>
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re; Interest,
To: devel@driverdev.osuosl.org
From: "Chen Yun" <pso.chairmanbod@iesco.com.pk>
Date: Tue, 22 Aug 2023 13:15:38 -0700
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHLMWRmVeSWpSXmKPExsVyyUKGW3eV5NMUg9UNVhZ7zvxid2D0uLfv
 MEsAYxSXTUpqTmZZapG+XQJXxpJ1F1gKdjNXtPUvYmlgfMzUxcjJISFgIjHn3kkgm4tDSGAP
 k0TflvMsIA6LwGpmiSmzFrBDOA+ZJX5vOcUMUdbMKPF7xgQ2kH5eAWuJCxd3MYLYzAJ6Ejem
 ToGKC0qcnPmEBSKuLbFs4WugZg4gW03ia1cJSFhYQEzi07Rl7CC2iICcxNVPD1lBbDYBfYkV
 X5vBRrIIqEr837yCGcQWEpCS2HhlPdsERv5ZSLbNQrJtFpJtsxC2LWBkWcUoUVyZmwgMt2QT
 veT83OLEkmK9vNQSvYLsTYzAUDxdoym3g3HppcRDjAIcjEo8vD/XPUkRYk0sA+o6xCjBwawk
 wiv9/WGKEG9KYmVValF+fFFpTmrxIUZpDhYlcV5boWfJQgLpiSWp2ampBalFMFkmDk6pBsbr
 ovc8E/5KLC8zejbp21weltv+RV7L78w+GjKz+eY/442CS7fP7l75PnnXJgP/iu6Ic6Gbdr/g
 eehWaO6965PL7JuWX/7F6dgKmB4oWaF6aYKOyz3V2V8jbsoz86x+7tauqsDBXsLj2fh9iu6T
 UyuFJh04G12y+6jRq703Xz1YsHxZ2KJzjcetlFiKMxINtZiLihMBGiktLEECAAA=
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns;
 d=iesco.com.pk; s=default;
 h=received:content-type:mime-version:content-transfer-encoding
 :content-description:subject:to:from:date:reply-to;
 b=HFlU8yxrQd1Xbs36yJrKz9OVK1Pal8P46p5ijEghqZ3kasbcfEQKP+V/NPy6l5a7q
 zYtezx82xzb6KLpaAM+i7MQgxKC5a7JrEkrfoJ3b5Zqsm3Fkg3h0wgxP1WTCrO4iP
 40vVXkn69k3DquYrQVc2SkiLQXzUgRCGwWmykT9pM=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesco.com.pk; s=default;
 h=reply-to:date:from:to:subject:content-description
 :content-transfer-encoding:mime-version:content-type;
 bh=GMzYzcyTxDsE6wX/XHG6MHqAdAiHrhqbmmLQ/TZ1QnQ=;
 b=W+aVo1XtOPwRmalS3gZ9dOVs0RRAzY8kGkGBG5PGctNIUosWnpZ+3VCNc5LrK61YS
 KdyDEJ0sGpv61ZgaNLbpQX1WPA6o3r+iEyrGFfLBFJsr250J9+MACquHgESF4hzkj
 F2ejx/X4gh6TQvqRI6Ycy2xkxA8Uvl3oH7QvlqtyU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=iesco.com.pk header.i=@iesco.com.pk header.a=rsa-sha256
 header.s=default header.b=W+aVo1Xt
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
Reply-To: chnyne@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Re; Interest,

I am interested in discussing the Investment proposal as I explained
in my previous mail. May you let me know your interest and the
possibility of a cooperation aimed for mutual interest.

Looking forward to your mail for further discussion.

Regards

------
Chen Yun - Chairman of CREC
China Railway Engineering Corporation - CRECG
China Railway Plaza, No.69 Fuxing Road, Haidian District, Beijing, P.R.
China

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
