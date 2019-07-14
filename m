Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A7D68089
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 19:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C97F20766;
	Sun, 14 Jul 2019 17:39:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BZxFUgi0w9SW; Sun, 14 Jul 2019 17:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 73777204EC;
	Sun, 14 Jul 2019 17:39:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A2111BF20F
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 16B8F860E1
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 17:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PIWDYeaFDGf5 for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 17:39:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.web.de (mout.web.de [217.72.192.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CDBE4860D6
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 17:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1563125936;
 bh=dYp0KVG4H+rQWC2lfLRDt60u/ZDbHoxqMrs8D4K53wI=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=gfEBOC/Sk5XKecDH5O1IpRmkwhNgLGi6mvhBo+PeXGuYQYXxZ9CNu39oLVx4MTuou
 5uh7Me02DHRFdMR0vCwpwk+hukgagDz0uaSVL4YtQTaQPbtnPCZztoQoPqlwvbumOJ
 fIzcdryiQJjbmniNeZrR8QvmM2vW7wUXycVlAzGw=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.49.159.144]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0MWB4X-1hxLa52PH7-00XGwE; Sun, 14
 Jul 2019 19:38:56 +0200
Subject: Re: [v5] staging: most: Delete an error message for a failed memory
 allocation
To: Keyur Patel <iamkeyur96@gmail.com>, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org
References: <20190714164126.3159-1-iamkeyur96@gmail.com>
 <20190714172708.5067-1-iamkeyur96@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Openpgp: preference=signencrypt
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <1de4f5d4-fc63-9445-c6b9-fbaaf6d7f200@web.de>
Date: Sun, 14 Jul 2019 19:38:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190714172708.5067-1-iamkeyur96@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:4cKPn0vk/p6pOVwCSvgE96Ed7lnmE0pkb59VTn6HOSvWqtanMz6
 Db8C7LMDA975h/j1vAznZT0yY/PMR1ToFhe+DhOGmiXeN8nfHcFm59Flhtbi14hId5zs3sa
 zoYnmLIDVDSAFc8aHJuRaR032FZSa32AshKiRafCL8O1XtO0nr0W/CNvR42Y8ArdqTYtZ0I
 mxROU6K8/CkF4dggt1wNA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:668FjLF1rGI=:XdT2Ns+hpVEp/FOTS1w1zV
 w19PQ2eHYt8IZiqpQIR5Q3gUG41JOwr+/pAkDx1UG86bD21NNCihS+Yitrzh7hS7gd/dZk8aR
 6qZDvi0oBvOoz0mK0H5HhW8t4yoWY0st9tr0ota3a8MpjbR84XF0OcKyIxM5J0gvCnUdpkBG8
 h3t56YRHZfTrp4kJf8Au8cbd8eQaA6vpURNe6g9kZeRRhGZ96KWSd7/h2otcGHzgZUcT8+bQC
 +ogS7qZmi+75qRaweM746VVhHnUI5f3bwvT7jSk02nI7PTF++Pd6KzEFWkQ9bCsvjauDO95rr
 PVJf8v5vckjGu3bgJ5TQ0UBC79NGAq9AvDRIQo18DFRGRl0R5pXOaQgplbtbwZ52gwqglGyq8
 RB14O6LAa5ytYEDRb4HNMwytQ0tH6etvs/eJYXOsxjHSxm+caRoeA6VMKHck8QyjBy2rETyvu
 lc6KSiEI+HovfOILUJ/53uNaUvSMv8O9ue4XR/GsqkB9vSos4G47SH/JChDzR6g9ac5tyKJZ8
 rNrwE6YYwuZUD6/5RV2VbMihdUDdywPiTcsuEYl/VuvTQnouHCuXLqB33GJLQmKwNMnSDTF9c
 bIKQT8ZB4C6dQfN/BXmpB0Ns0eGhuXF53nJLnOnfR9lO3CNL/flVxJIWSoejyswmEe4bBDO5S
 baPuirSuv8FOsZU7vStaRYKnMMHCvZZpOngGF6/fCSTigJQ4As7AaDyoiqv5Nm9bTtEK9OjdR
 RYkIuw5Gq+n42k5lfQFXMYDch/KuMn+saGDqdolcL9Z9vhNc0Lh19XnPH8swfF2hh+jsRv0FP
 MSGQPvUCpBRtEG+Ey6JpmZfR9dlu0Mks9SQNm+2aRNhinFT9rNOx/NUZAOu8lcF04xAtzQUv4
 VACMWRP/vdaRWXRdIZG8CLDG6ezeYd5ny+c1PZNbD5FZY/9Thy8cN/zGmUCCxUIovtu/mtcHe
 frZPg5DsrSK8kSOTrx/hl/Ega8d3kgY3/wvus2Ctu7iK53njGs14/grk6zvZfCYNF3weVBlaD
 5cPU1gmF73HRcUGX9Exx0uz5NUcDX47HkkDd4LnHgPSiaHBzT+A0on8PvtQqO/363/0t/aPXC
 ue6Gxha/2726usWQImp5xKpfl4yQ5azMvio
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Suresh Udipi <sudipi@jp.adit-jv.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Colin Ian King <colin.king@canonical.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> The kfifo_alloc() failure generates enough information and doesn't need
> to be accompanied by another error statement.

I am curious how the acceptance will evolve for this variant of
another different commit description according to a known software
transformation pattern.


> ---
> Changes in v5:

The subsequent listing should usually be split between V2 till V5
for such a patch change log.

Regards,
Markus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
