Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AE076E64
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 17:58:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3045D88FD7;
	Fri, 26 Jul 2019 15:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H7bv6Dufy4Ov; Fri, 26 Jul 2019 15:58:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 829D788F7F;
	Fri, 26 Jul 2019 15:58:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 330591BF29D
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 15:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3049022C51
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 15:58:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xGtM04YXnny7 for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 15:58:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 654EE25BF2
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 15:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564156653;
 bh=qQMv8Gq4VWw3O9pfd3Hcs8DunZMxg+zrMDk3d/xK/Ig=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=btwBiIdpDEYqjFNOFAQZfoI6LC6YCv7SMbakhPOWf43dVDwnvKQzwlTnVN3J2Eg7w
 Vp0xsYm8cr9OECam+mOvuzsqjJb2YxPA4Vpy/ZlXnc6yiWqb5zZWS8zg0NpgIy81xy
 sVq+tHzpofGTGHvTwUZa9eVve65y/rltKpJEZlVA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.127]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MS3mz-1hwrCA3God-00TRbQ; Fri, 26
 Jul 2019 17:57:33 +0200
Subject: Re: [PATCH v2 -next] staging: vc04_services: fix
 used-but-set-variable warning
To: YueHaibing <yuehaibing@huawei.com>, eric@anholt.net,
 gregkh@linuxfoundation.org, inf.braun@fau.de, nishkadg.linux@gmail.com
References: <20190725142716.49276-1-yuehaibing@huawei.com>
 <20190726092621.27972-1-yuehaibing@huawei.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <229b2d16-9623-6005-2e1b-4d1f239643a2@gmx.net>
Date: Fri, 26 Jul 2019 17:57:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726092621.27972-1-yuehaibing@huawei.com>
Content-Language: en-US
X-Provags-ID: V03:K1:a2QhRZDV76cNOnjxUp2kDO8bbHN+pQ+5quVTlxjJKZaXVZ8NaaZ
 jaLLWxgnA8kgLJwLh5hRmDmyoaB+0mL5oxcM9ioK+We71b9cPSxIo4RfJjsnDQ5LiM+DRrd
 cEqT6ewd45gEwSuo7F/WosYaSPOtL6R8nN6o65GqjcroVOpVPwZZb1gqtbFzfnDUOlpZDtC
 P19ql6muElPiWevB/OJ5g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:5yPF2OLnToQ=:YON+oYprlbkfGhoC6RuoYj
 nz07pRF4vW8w4G0wmk9aqybt7RDI33cerMdwgmokxtMhpRSoTyhDRe/0xputZ3tPGHqgzNvnP
 3Hj+ksOssb1Bo5s5XOzuKuaX818IisjjZm36cDLQNrimqpUrt2ATI5W1EMbgU7Vhp28c/MpGj
 0D1IO4n8Ku1iduTVfOJie1joYj+b3oKDCbHULvNmJ8gfmBzI1tHKsMvESj/elfYlTi3v/5NU+
 H+ld7i6+zc6Gq4G/Y7u4cdHnbYlM13ruyGKDz8ZD1hSWRXydTNxr/jH9eMYxFmUGZYW+ab61s
 kal+mn1AELb1IrK/ChExhHmkDXI13Xy/FL+zTFvU9tjMYd5On3xHLm08fbp5ch2mQqBCkrkvH
 hltK4YmbU05PLASo+5iCIPT8KZhr9ZGCNq+AKua7j32FIHOyqcm0tBm0j7km4rg5Ay/NiMHLR
 +e7vfpB+65StkgSe7S7khtwwoN07fPCQR9VxB1dTBJqI1Rwv5QIiCuy3R+yrNnN6BbHN6Fdb7
 XfqZ5FFazb70uJ6VGdmy/iA06X8edPspsc+aV8cQ3LY7DlueSlFLOsBxqLhRuOehhqTuooBAE
 7j8eIB+Uxvkbha24/WkvUjgLN5exo+zScz8kb1iaOX3n4C9MtFeCymUrOdTvSMg3VZ/g3mbrC
 qVLWgmp+blBrPHXr+pZVV6uPZohXTx8mn3LmNAyTG4GRNo0iZfg1HGM4KIzrT0+Ai6Tb4BJ1h
 qKiXdnQ8GtYjYb7p02AHPBtt5c317KFXhqrJUelQ3LD4yzUYqH88qSlsz5eksGX+ge+bhGK5E
 AbVLaGC5DPt3Yt2QU1RvK4Qgeo95M4LJN+O7K05xe10GWV+d/GwAKuqSkX79riGv5YUn7YXIf
 cKRZveHfGQOB4xnXtvA0Tx2Z9uH4Vz0WDj24+aYp096orJBluAdKE5pcoqTM1b9AmFOBhsmix
 l4CISh7f/HWOfUyLX0dbFcCPHUMq4t0V2R+JeIu+HAVOloHTaupOdchmXqUcl6HD4pGWtqG4x
 cjETbP2INxt1vUhSfMRJLaSx7rAZchcbYAmFOJhE/Azdgxe/3srFFJoE2Un9jzmwGoAe0kffc
 dQKRQ9SojxtTmQ=
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
Cc: devel@driverdev.osuosl.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Yue,

Am 26.07.19 um 11:26 schrieb YueHaibing:
> Fix gcc used-but-set-variable warning:

just a nit. It is call "unused-but-set-variable"

Acked-by: Stefan Wahren <wahrenst@gmx.net>

>
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_release_internal:
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:16: warning:
>  variable local_entity_uc set but not used [-Wunused-but-set-variable]
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:6: warning:
>  variable local_uc set but not used [-Wunused-but-set-variable]
>
> Remove the unused variables 'local_entity_uc' and 'local_uc'
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
