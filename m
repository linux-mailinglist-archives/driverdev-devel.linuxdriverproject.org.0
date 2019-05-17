Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E60B214CD
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 09:50:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0F654313B3;
	Fri, 17 May 2019 07:50:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0H5ZpFf6cH2T; Fri, 17 May 2019 07:50:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0FE0241A8;
	Fri, 17 May 2019 07:50:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 827701BF2E4
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 07:50:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F20A87048
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 07:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gzn0H8g6MZaB for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:50:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B08F8700E
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 07:50:10 +0000 (UTC)
Received: from [192.168.178.167] ([109.104.37.130]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MAwTn-1hYOAy3Hzt-00BN1q; Fri, 17 May 2019 09:49:53 +0200
Subject: Re: [PATCH v2] Staging: bcm2835-camera: Prefer kernel types
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>, eric@anholt.net,
 gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20190516213340.9311-1-madhumithabiw@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <bf9d2354-4ba6-bc18-841f-79ad75e6d911@i2se.com>
Date: Fri, 17 May 2019 09:50:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516213340.9311-1-madhumithabiw@gmail.com>
Content-Language: de-DE
X-Provags-ID: V03:K1:5vRoIj7Qja7sHTo/eTuJyaMrKZswD7CC0dePgB/jan/opZcO5fi
 2AxCxBwblWgaxK4pmLJuaq4/kOigN4/CdB8CzWAgCS3XhA9bKcS8xrcdIvoZwV9y1zRRAJa
 yLDsIdmHDEPG8tJ2TvxwuRuZ92NGjM1s2CI7qwJg9QTJXu2eWKVIPFl2OTzP1aQTCRlQ3Wl
 I1/nrPVaflIUqTWFtGvxg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:poAiXjetLp8=:Yr5UiP7twLxtvNUfdfsjWz
 kGhcNLpNAjigYCRlaYnIUZ2fCPSyKH6pRx8yIgziJG/JaYrBHwKjxpWnYyBj0Le5ewTz4kQhO
 NEodSeLH90X+Tf7yiHZkWZO8H0ezxBKIl25Khko4DWbiEKw6yichg8cJ60ELBRrxTRsy4BPWW
 3LtLPzYA+iyTII0B4FkJZBqp4+VCRp8xqa3dQoMRlRSLFMs/V+U7xvqlacCSf/9K7QMmzYpRt
 Uw5HEV2pxlCV6VFlDWaTkcJQV9m500bMeUrNlFUuLtTFTa12UDxhjEIdsTeF+pNxG6LiEJfyC
 iBekcSsX5WBbj3G0MW9htNrgs/J8P+gQWFlxv5p+se/D0a0AejU4thkHDoj9K8XjGziXRglQl
 CYeT1VkRyr0Yx22/7VNZm75RBSuTiy4RatpBdRvMtjbst4i5ZY8VXedmrMd8/0zlloo+Ye/T0
 vsjSkBPpTR5L5JU0K6y9psUyyNlu3H31m2sZB2rVA7SDhcJ5zekdREITGC917RNgLobf3RT0j
 ZmRgNE2lJixrYwX2FeI1iiXf9ZtVd3z8NUduqwV5B08JLIYffnt+Co6glitm2bWpzudZSIpx1
 hnYEQSTUbb6tFbtWFXIDlRHlOabq65ZuiYjmtdmnePGT798me6MpBeo+raVCQjgicwaAbBcs0
 qPBUlZvD2fi3P7hs0xx/5UY23EsYkG7V8YwlJFGyGwesPN2WLUOy8w0EB0c44pmRtLtFYcoD1
 r0oJKSqcbcZZo/aTH3KGQG4Q6rea+3t56Y8uBfm40w2hV0SAbC5OtjCHkAM=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Am 16.05.2019 um 23:33 schrieb Madhumitha Prabakaran:
> Fix the warning issued by checkpatch
> Prefer kernel type 'u32' over 'uint32_t'.
> Along with that include a blank line after a declaration
> to maintain Linux kernel coding style.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
