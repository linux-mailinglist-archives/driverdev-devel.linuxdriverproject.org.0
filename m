Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2629B7058C
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 18:37:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B4F820478;
	Mon, 22 Jul 2019 16:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HG3VY04PcGbI; Mon, 22 Jul 2019 16:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6C40120448;
	Mon, 22 Jul 2019 16:37:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C01191BF35F
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 16:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BCD21864A0
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 16:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tr17odxfxHC4 for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 16:37:40 +0000 (UTC)
X-Greylist: delayed 00:10:02 by SQLgrey-1.7.6
Received: from sonic304-22.consmr.mail.ir2.yahoo.com
 (sonic304-22.consmr.mail.ir2.yahoo.com [77.238.179.147])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B03F08377F
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 16:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1563813457; bh=4tmyXeIY4oqFIVBQrFKdjj4C+ZBVcIroyn01PfQ/hHM=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From:Subject;
 b=nNWh+h3GsfULrrEdUlXLfr/0vy7JeL3SMmhLo0AdDAR+TGnpj3enNaPgdcMDb88CYwaK2oRQLvmJisj0YTp9BAPm/cZ3LZaOpmI7MZVuwnVMpnKVjQBvMrBe6JbB6ywgn914gxs+7UlbZ2WMI9BLc3umXzyyE3owf32WnXrONBJQgIlTbCjVxcxPnvJsQ6bUD56NPo1cUZsQVIIYBscpKoNDDmEo8aT+xEFAa3/4femdWs6oi4S6Od1m3kjvw1iiQ5AQwSZ/fmhTpJ0f6RMVeIJOhRBwmQ0m2SPWoHlY4tLsyDmZ4NY7WNAgKJ2xim8Daf//AYYG/Kj7nUQelkuhzQ==
X-YMail-OSG: kJzK8G0VM1nKSd0411aaQcR1cgN1N9H0NE1Il2FHTI9KnNHDofM4LaONFl1lApv
 Vyh8jk3edFw5qprRvl.92gaApjmfttnN6y6CGP4kx9ocxQZaKSqZhXvwaPQNMlXNucX3wwKllt4w
 ODZNWYmjZ3Fa7uqIkti4UqNl2Sn91EqI1VvpI.ikwSGpZZu1MhspOgtBFXeXaZJkZ5gHctBAHwit
 mR2dN2bgXHnJrPar5iqNYwTKPZL01Npgc6.UXOHl8wE7zcCTBfiMXVeVGbYqXsq3XmPYXlsQV_rA
 oXQ2bGuGeMmN5sxLIMim7NEf3Q86k7WiMy4ffi8wE2sxBzRoovZQadl7Tj9U0iRTgx4QHHA4w99S
 KQuBrfrz64khcZHTHb_sphzRQRUhwxefMk7hnc2PQkIqZsKPMKnkH7OMr3sR_8SrZq5CF4lbmELu
 587MFziqA8Ug9HW4B1zxBAJOPhtEyj947WCxnh928ne3N_2KUd5MM3shSC34PdMLfF1RLFbW_vFt
 AQK9V_6DepeByE_YTaVKrf9dlBrhGojuoYGcTwWd5zOL_K68f1woziDex_YkysKi_cIXOibYqa7f
 CHVlk.8BCFkQx0yMVfg.jQfyCoH0eYlmKJfhBx.A00Lv5LFf.0A5Tij_BMmx8C4uaiVOWielMJUg
 rF6BvW3eIWef2ANZCPqDq0SxfR00jWyf3g1Bj95Vg3mB1N1mo9rrrAeRFqTWFssZk_aDLuozfhP6
 wIT9sroPknqhOUale6sVeiGF6AvrOJE48TVytuKrJId0nuO9rzH9DgTIWOYCrS_2zTfg4wx0JJES
 eWpnGNG7zMPhfp2nVTqchZ0EpsWiLlITLbmW482a3NNarNeXIlZlmniBMarD6ogDqVA9qhrbWeBF
 CGkMFZUucrpZbUY.gBPxxdJjiCnrmdAyIL5h5XV9TyWvZjt4QodE9g8iv0NBnS_Auej3beTB7L06
 RA9M8eaKOrqGb96ad_um_DaY43jI08vs8MOrpIJrKms2MDOJGJBtOhWB8LZ4TFZ_oGz2DI6XcFID
 qF_4caa_d3B5OUL9LK4ovobNaOEH4js3T9nOIx92H4yJxzxYbiytPbr9T8dzgi_PBdD43zDA5GDL
 95qStHVJx7L.Mhqt31dJX.hnzthMVcuBOg3ekPH4ogu4uBh0Ux_F0xYTkTs6ESPA1vqkYyeIB0eg
 GGo3CZH2oGWdDwcfjbxNpINjZWASZbLgkk5ViHqc5k3821Ds0hZ8X77Q-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.ir2.yahoo.com with HTTP; Mon, 22 Jul 2019 16:37:37 +0000
Received: by smtp420.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 0f3571226556d2a71ae3b00089e7ff33; 
 Mon, 22 Jul 2019 16:27:30 +0000 (UTC)
Subject: Re: [PATCH v3 23/24] erofs: introduce cached decompression
To: "Theodore Y. Ts'o" <tytso@mit.edu>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-24-gaoxiang25@huawei.com>
 <20190722101818.GN20977@twin.jikos.cz>
 <41f1659a-0d16-4316-34fc-335b7d142d5c@aol.com>
 <20190722132513.GA5172@mit.edu>
 <db672675-c471-5bc8-af15-91c1859e9008@aol.com>
 <20190722151226.GC5172@mit.edu>
From: Gao Xiang <hsiangkao@aol.com>
Message-ID: <a5001fe8-217a-42bc-9257-45bef544762e@aol.com>
Date: Tue, 23 Jul 2019 00:27:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722151226.GC5172@mit.edu>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org, dsterba@suse.cz,
 Li Guifu <bluce.liguifu@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/7/22 ????11:12, Theodore Y. Ts'o wrote:
> On Mon, Jul 22, 2019 at 10:16:44PM +0800, Gao Xiang wrote:
>> OK, I will give a try. One point I think is how to deal with the case
>> if there is already cached information when remounting as well as you said.
>>
>> As the first step, maybe the mount option can be defined as
>> allowing/forbiding caching from now on, which can be refined later.
> 
> Yes; possible solutions include ignoring the issue (assuming that
> cached data structures that "shouldn't" be in the cache given the new
> cache strategy will fall out of the cache over time), forcibly
> flushing the cache when the caching strategy has changed, and of
> course, forbidding caching strategy change at remount time.

Okay, thanks for your kindly suggestion :)

will do, hopefully resend this week (I agree less bugs with less
kernel configs.).

Thanks,
Gao Xiang

> 
> Cheers,
> 
> 					- Ted
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
