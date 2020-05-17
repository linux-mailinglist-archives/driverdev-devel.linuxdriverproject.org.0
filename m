Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEF61D6DD8
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 00:32:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 020C8207A4;
	Sun, 17 May 2020 22:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hyikFa6gRIAH; Sun, 17 May 2020 22:32:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1B6512052A;
	Sun, 17 May 2020 22:32:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 136861BF390
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 22:32:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0AF648770B
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 22:32:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X3LoJG8MmW-e for <devel@linuxdriverproject.org>;
 Sun, 17 May 2020 22:32:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 032AD87684
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 22:32:12 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id i16so2455275edv.1
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 15:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IY9zS+ciSstxD/NCOg/Nwls054kIjwxMDZxFCipe6hE=;
 b=S0eNyWfA2fopxCroDGihEhhcZW8xaBIo/KUpm2LepunFcwLeBToH4YXfrfNfRXEgqL
 QcgaS+PFgFnQHF+MHA9yvkLF9/cbPWg5i0yb8Caj2rGIAwhYgVEu+kCS3SAQQxOS2/9N
 ezlXMBEzbn6qeA3U7MLQa/SxRaiQX6aA+MXDTAy4oSw7fuGk6CXOf/dZ8+GBHpLR124C
 d2qj2lGMPxPqnaCJfCNog1uTmTxsrcJJ6soozdqT/qvlpmbD4FWcsrkDHAwgASRp+UIf
 bchelc6IYVIwT/RdSz03EtHjUpE74+5t+ymH6dWmXWIRZxWdOvMzfHeSZ0RJ6NKOiId+
 nh8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IY9zS+ciSstxD/NCOg/Nwls054kIjwxMDZxFCipe6hE=;
 b=EAXtV0jvA21N+CvcumdTJB8Oa5V9pGzfPXKVfd9ydD0ryEBFX3wK0mwCgj8LcjFn+9
 SWK91NmNJzs2Vvcs6p3bpEWyAd20z+GLxQvX9Bnzr159RQDGnrSM5lOQzl8LiJixma8Y
 1yNcaXedE36OcPzLsz+3HD7ux7Qu8K8qiU6Ux8u/mM3BfePImybkBjx6G+avB77ZzFQB
 rrojg2RKEnMBrMDTIvwcCCuF0qHCpHwntsmLdQnUTvMf1O8DfkVwF2RLF81SqUeKDp7S
 Eqv2rxsdIOqJHTV4F4+Nsqq6+1S7p5mJkXit2I35zetzlSlvYgrhdRYIR+FoQ4lL36PF
 o9zQ==
X-Gm-Message-State: AOAM5317d6akhybPa1qqJ7ppi83zT+rSkHz16h4r5y83ujCu2dBAk+EP
 7dP446gFFklat1cAkVK6IUrWxSK06UVoYFa/6s8=
X-Google-Smtp-Source: ABdhPJxWix1AovVBpXEwVGAxHQ9R2kNb0eLRBFOI6DIZP5JcSg67Q/IWOOjBt8j5rDb16WWams2NWT0R3BQh/zo2OWY=
X-Received: by 2002:a50:c014:: with SMTP id r20mr10680846edb.110.1589754730321; 
 Sun, 17 May 2020 15:32:10 -0700 (PDT)
MIME-Version: 1.0
References: <bcefba5b-107c-716b-bb60-5b4b2476894b@o2online.de>
 <CAFBinCD8-tr97GCVhBi5R1nzxLhy=_6VuLY8ubUO1SDTFjiELw@mail.gmail.com>
 <22af498b-44a0-ced3-86f3-114427a73910@o2online.de>
 <CAFBinCCGAkhPCwOW=mAvsV2qdixq8Gf8yQw1gYErHpz7KmuAZg@mail.gmail.com>
 <5de6db87-a71f-d14c-390d-b0caeab5d650@o2online.de>
 <CAFBinCDB9c2uMRXO9DKSX4hC7EBgnRfBa+BM5-VdEPZeieKn_w@mail.gmail.com>
 <813dfc08-f13a-dcac-0bd9-821d188bba08@o2online.de>
 <CAFBinCCgZF5Pu944q-_+V0yQ-nc6q82xDjJHjsnj6=uOQL+DEw@mail.gmail.com>
 <8cbbf90c-54ba-8fa3-3386-022c9c997a20@o2online.de>
In-Reply-To: <8cbbf90c-54ba-8fa3-3386-022c9c997a20@o2online.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 18 May 2020 00:31:59 +0200
Message-ID: <CAFBinCBukGbzgO-Y1dCRYXZHhX2PcSEQQ_XvhHqLcnw0fGDP8w@mail.gmail.com>
Subject: Re: RTL8723BS driver doesn't work for,me but I can help testing
To: Tobias Baumann <017623705678@o2online.de>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Tobias,

On Sun, May 17, 2020 at 11:05 PM Tobias Baumann
<017623705678@o2online.de> wrote:
>
> hi martin
>
> sorry for cc -problem it was my fault in thunderbird
>
> thanks for dtb file but this file has problem kernel stop with
>
> [    6.122092] mmc0: new high speed SDIO card at address 0001
> [   35.804258] VCCK: disabling
> [   35.808781] platform pwmleds: deferred probe pending
> [   35.812625] platform sound: deferred probe pending
pwmleds was also there in your last dmesg
please ignore the sound part, I haven't tested it on that particular
board in a while


> [  215.804295] random: crng init done
>
> (last time deferred probe was gcc problem )
>
> please can you provide me with dts file and i complile at my linux box
> or maybe only the change line and i use the dtb from image and edit the
> lines like the usb patch
you can get all my patches from here: [0]
as always: some of them are not even in linux-next yet and there's a
reason for that ;-)
I have changed the GPIO_ACTIVE_* polarity for the two GPIOs in the
sdio_pwrseq node if you want to do that by yourself.


Best regards,
Martin


[0] https://github.com/xdarklight/linux/tree/meson-mx-integration-5.8-20200517
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
