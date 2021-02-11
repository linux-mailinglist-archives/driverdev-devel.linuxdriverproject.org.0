Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92FF318569
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 07:55:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9406687550;
	Thu, 11 Feb 2021 06:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aecxyd9m2hb9; Thu, 11 Feb 2021 06:55:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 892A48750F;
	Thu, 11 Feb 2021 06:55:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D05081BF82F
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 06:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CC2416F4B8
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 06:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IJfr5bYmy4ot for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 06:55:04 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 1EC776F4E1; Thu, 11 Feb 2021 06:55:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from qq.com (out203-205-221-155.mail.qq.com [203.205.221.155])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8B3A600B9
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 06:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1613026478;
 bh=tP8AeuzJ9AdcE3HiUSEUsNXAmy9JnnVdGkYBqEjHwOw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Y6TTMX3UdZWT4YHxbMTVfXKntfV9/OxDzLhwwqalVgihU/vvNPJDpZA3kAfc6Sj/O
 xd22HOmCpcrOEZPN4A4ELImdE7aiDjTx2LxfawbSUelNE8umeKg/UMdYO7mcI4e+le
 iQl4UYN6OSFYmHmFaFd3XYoIS6kZOB5H/j4CyZ9Y=
Received: from sig.localnet ([1.193.79.12])
 by newxmesmtplogicsvrsza9.qq.com (NewEsmtp) with SMTP
 id DA2A6096; Thu, 11 Feb 2021 14:54:34 +0800
X-QQ-mid: xmsmtpt1613026474t0d1sgecd
Message-ID: <tencent_28BF973AF1E0C4BE25C3F0D8EC883689AD0A@qq.com>
X-QQ-XMAILINFO: N2pVADwlTVCgiZM6TZ06EoowNiW+xRW6FGPkORn6T8Y30gt2Y7mq3dEGB5b2d4
 eBL2SW/Q9Ty7zldnxm3HxZIljXT0gJwjTYvRh3jqxYnjs9mBdx7RLmjRyh601vo+YVkENOGkFqfD
 CzMdG2kaCzthio9gPW/1Ky4pjtM83vRIpyZneG0Cv5BjxxEfxfBuKJfOLgYzeI4a9obYNdyo6lSq
 jPt4Xq2diLuK41jWF7APrVJ5HKoZIb6geZDbzd1tX3152No2JcBeuVuLFesjag68QRDVIg/EEqTj
 uU4s+4tsko0zAdPaRQCO0iJxKLLBqiGM95S3xzlzPPmpH/6Fp23IIxQiERbauFejsnBf1TDRDx3q
 jO+4FRpbQLlUkE1svBVU4kbZAs3lB1NLbSCMQYKWmEPbSFck0bIuC6M2Q3goiOM6UBDYuIiXbgK6
 n/6Xsrxu2X/x4zoOTWiiMwMAFt8gOB0jp5EjaihUF6OecYfRR4hmepuVdix/OlNsMYETkxcNHVGW
 TKlbSJZXXbKpLTrUHdLk6hqyigcJTLUq+FzAQAMRMEHITaIx4iV9G+Gp5aISQen2gmes60PLgXMR
 U+f5h7pKeI4Aiy7bsu4crKusetjGIWZt2lPhT+eAuJ+C/SfaRtBiCYseeeJ45yt1BIGjgDoNYa79
 QEWa40WFrTTYJJhwkq//qW/pIr82rwUSkD/eIlDKhyV9yIs3F2GYFeiXr9wIUk+2mkptieRCg0rV
 u8g+lAPnoyvvRmGaLcDdjB3WkKnfKgoI5gDu1dhPx4QW/nxG2I0l1AiJSrMWIMtaKVHCayDllc0K
 8=
From: Yujia Qiao <rapiz@foxmail.com>
To: Greg Kroah-Hartman <greg@kroah.com>,
 Aakash Hemadri <aakashhemadri123@gmail.com>
Subject: Re: [PATCH] Staging: vt6655: Replace a camel case variable name
Date: Thu, 11 Feb 2021 14:54:34 +0800
X-OQ-MSGID: <3106648.6hiKBje3cp@sig>
In-Reply-To: <20210211064645.3csilr2bosr7hu6a@xps.yggdrail>
References: <tencent_30203B4B4D63EBA1A5083C4AB110C9243C08@qq.com>
 <YCQc0iBNqqkr/KK/@kroah.com> <20210211064645.3csilr2bosr7hu6a@xps.yggdrail>
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
Cc: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thursday, 11 February 2021 14:46:45 CST Aakash Hemadri wrote:
> When I first encountered the CamelCase check I believed that
> making such changes would only cause trouble for others.
> 
> Are such changes to API welcome in the kernel?

I think it's not about changing the API here. A static variable is renamed and 
only affects the single file. The symbol is only visible in the file.



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
