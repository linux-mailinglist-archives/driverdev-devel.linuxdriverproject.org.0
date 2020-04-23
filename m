Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECC81B5EAF
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 17:09:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 095832340C;
	Thu, 23 Apr 2020 15:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 63CpczClEn44; Thu, 23 Apr 2020 15:09:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2ED120472;
	Thu, 23 Apr 2020 15:09:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C1B21BF3DB
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 15:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 181E48542A
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 15:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xFz8-7Ops3IQ for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 15:09:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 73BAA84E9A
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 15:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587654551;
 bh=San9SLO/1f35dByeKyY8xo3JJC4OXQOxLntT54Yf/Hs=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=OGseXIem1YnnXyGA2FiPbnzR5oxYP4AEZZ0C0Rg0bcLdYpFMEWJmaXaUtqDezrMJy
 5aeajbQ7h5QQSwKzFAkj+2/+fcmDFCufkzmOjUCJMoUa6eduepnuNw8Vdy8CCDxLiu
 9OMxF8wfQ79fjQMeHyhQipch7ANWNtinT5xUxDQI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MZCfD-1jebvK1HsX-00V6KW; Thu, 23
 Apr 2020 17:09:11 +0200
Date: Thu, 23 Apr 2020 17:08:54 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/2] staging: vt6656: Check the return value of
 vnt_control_out_* calls
Message-ID: <20200423150854.GA3667@ubuntu>
References: <20200419104821.6127-1-oscar.carter@gmx.com>
 <20200419104821.6127-2-oscar.carter@gmx.com>
 <20200423114032.GA3838948@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423114032.GA3838948@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:QF4MJaR6kGciPbJHwmpHWraX+DPE/W/SElp/vknERb+6Ij41MFy
 lu4GXiSt5dxXZPrXzT+OXf2g1W06ncLGtn+SDQrC0jvX0X5WBr2ceNLAGnocP97kuoStMCn
 bodD3V/x66pgeNv1tcxpcgPkrRcPJWgZhpoLqIUB+3YP8J6M65tw+E5P6xP7gDGBCFmCneU
 4OWhodkxEaUhUrLapGiGA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:gdvsFbu0xuw=:SSKx1zEZOmOeup00jMMQUz
 IHOIQmopk6vJNrSwhKbOM9/8i4WGpm/93n5lOBrQAVrzJm74acTIqvQ5qrm0CnJ4Ym5uJwN3h
 mDsxOQDVa604PUwYvqm+39/HbBpOI4/a7yJJLRItnoNvjsbh12JdyfDwpG2306KYed+PDly4/
 JkuG5vVv7VdLpPBS9aB82gSTXxf8J/Hu3NBMTPDcXFa6yQhVJzp9Yjvv1aL/z6ja0kdyFxjYM
 cWxYmdqdMPmqBxYaW/MeoxAy4WlI3vp69NpSCkSVlv9IPUYRNn93E/2GGaERDXgSiAAJXxPrz
 8W/KYG5XIXD4sRC6iJGXgqFbt1nGNfnqdGzT6x8GZs1Nm6E9PSW2Vb+MQCVe4s9tfWbcjtxis
 bolAYBgRF8nn28eiqdsDRpLgfVovNVAcrySgcu598SPXnUYrVo1n4+BEDQ7nxm+578UkNzuBN
 GR+EfDyyOW1zU3WKMuwTvlLKZznAUaaSBs7Zfp+KItJMzzL7y7e7IYeMjybTG7NCG+AcTtK0G
 cTGr2LwSSrKJaoydsp6dqMCcZOdoqS3AlNjbPWVLPmv2AqILv3YmgXj+jWAFk4fxkGgVI66BU
 STescRwb4R0Z2fIMa86rgyAZuhswimzFvidvowJ4AzhXCIuAFHZyXD9dwcETgRD1PdP21dpHO
 n7o3wXm+0lqenIfxTiz3lt6EOiVU4wtaUAeSbVW/7UgQJ75Xo4YVEroOcsVcXEbOjTW58Zx94
 QoLkfXchgyhTBthc8G+3SYFnESveFjj4OCbMPYZqRgKwo4PPmwOzbxmgGO+FoBhKFEEfRsdFe
 95IY6RvBKWcZhNXDbZVMXZrUm127A8iIK0ZBH49XnJaB2Sx2RB5Fkd227guYy6MQUJ6RmG930
 5DA+IUiWHuyofMB9FEZifm4Nt3UiuZuTCiUjrIoxCIr74bikCMGqknpmf4z0LjqvOPJxkLXR6
 6bVov5qH6VCP89RS1sRPz/swJ2vEl1h3eIzg+Qu7ywndH6w6tMrDJQmZnGINXpZhOIWjIGL0c
 HFVRuQosej4sc9mXSrMDQD0+AGvbXMkCvQ9rjfqIEISQUCIf3Ahxerp5JyRQUBqPG81nTAk8w
 rgwJ68f7OJOr621gqb4Udb/6Qzm5gIiQqJrHH72BnxXTduxusviKCPlnJeTZNJ5rbcTtQ8vvW
 RF+2rLACSTS/R8YKFphxyUGRm4IwPtuouNVPhJFotXVduZ42zVCJdrbjTM+2jVjAIPDtFrwIp
 K/UE23dyfwbPP0RYv
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
 Malcolm Priestley <tvboxspy@gmail.com>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>, Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 23, 2020 at 01:40:32PM +0200, Greg Kroah-Hartman wrote:
> On Sun, Apr 19, 2020 at 12:48:20PM +0200, Oscar Carter wrote:
> > Check the return value of vnt_control_out_* function calls. When
> > necessary modify the function prototype to be able to return the new
> > checked error code.
> >
> > It's safe to modify all the function prototypes without fix the call
> > because the only change is the return value from void to int. If before
> > the call didn't check the return value, now neither.
> >
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
>
> This patch, and the 2/2 patch did not apply to my tree.  Can you please
> rebase and resend?
>
Yes. I will rebase and I will resend a new patch series.

> thanks,
>
> greg k-h

thanks,

oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
