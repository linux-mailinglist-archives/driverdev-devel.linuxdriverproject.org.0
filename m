Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5C91D70A0
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 May 2020 07:59:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0025220C45;
	Mon, 18 May 2020 05:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nWdaZvJsw0LN; Mon, 18 May 2020 05:59:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0E5920519;
	Mon, 18 May 2020 05:59:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1097A1BF232
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 05:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 08183862C7
 for <devel@linuxdriverproject.org>; Mon, 18 May 2020 05:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 56vNplyZ5Xfq for <devel@linuxdriverproject.org>;
 Mon, 18 May 2020 05:59:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail267c50.megamailservers.eu (mail1460c50.megamailservers.eu
 [91.136.14.60])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 20F588621E
 for <devel@driverdev.osuosl.org>; Mon, 18 May 2020 05:59:34 +0000 (UTC)
X-Authenticated-User: 017623705678@o2online.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megamailservers.eu;
 s=maildub; t=1589781572;
 bh=fxLi+YSwbmy8278/adFBYex83RaX11iJ/EusGEQX78Q=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=VjjGLU/pBviWRwfqfmzs1c+ntu/0Mqi4zL2yWfoWYU53YTQP2b5Nt2d2rgiXJ+gN6
 jucNuxGktugiiFQwk6VoRLdyRNDTr5SD665pEGVfo0PT92597yX2QSMjVracJ8elWC
 kyUXG0B699D5ucgh1qe5USJF36E/MSml6lVyUtq0=
Feedback-ID: 017623705678@o2
Received: from [192.168.2.2]
 (dslb-178-011-017-047.178.011.pools.vodafone-ip.de [178.11.17.47])
 (authenticated bits=0)
 by mail267c50.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 04I5xS1r001427; 
 Mon, 18 May 2020 05:59:29 +0000
Subject: Re: RTL8723BS driver doesn't work for,me but I can help testing
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <bcefba5b-107c-716b-bb60-5b4b2476894b@o2online.de>
 <CAFBinCD8-tr97GCVhBi5R1nzxLhy=_6VuLY8ubUO1SDTFjiELw@mail.gmail.com>
 <22af498b-44a0-ced3-86f3-114427a73910@o2online.de>
 <CAFBinCCGAkhPCwOW=mAvsV2qdixq8Gf8yQw1gYErHpz7KmuAZg@mail.gmail.com>
 <5de6db87-a71f-d14c-390d-b0caeab5d650@o2online.de>
 <CAFBinCDB9c2uMRXO9DKSX4hC7EBgnRfBa+BM5-VdEPZeieKn_w@mail.gmail.com>
 <813dfc08-f13a-dcac-0bd9-821d188bba08@o2online.de>
 <CAFBinCCgZF5Pu944q-_+V0yQ-nc6q82xDjJHjsnj6=uOQL+DEw@mail.gmail.com>
 <8cbbf90c-54ba-8fa3-3386-022c9c997a20@o2online.de>
 <CAFBinCBukGbzgO-Y1dCRYXZHhX2PcSEQQ_XvhHqLcnw0fGDP8w@mail.gmail.com>
From: Tobias Baumann <017623705678@o2online.de>
Message-ID: <a95f5fe1-4376-f872-961a-c2237c36811c@o2online.de>
Date: Mon, 18 May 2020 07:59:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCBukGbzgO-Y1dCRYXZHhX2PcSEQQ_XvhHqLcnw0fGDP8w@mail.gmail.com>
Content-Type: multipart/mixed; boundary="------------A98A91A7ED40ADFF24300404"
Content-Language: de-DE
X-Antivirus: AVG (VPS 200517-0, 17.05.2020), Outbound message
X-Antivirus-Status: Clean
X-CTCH-RefID: str=0001.0A782F1C.5EC22409.003C, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-CSC: 0
X-CHA: v=2.3 cv=Cf92G4jl c=1 sm=1 tr=0 a=cfXdPu6Ul6OsnrHrce2WRQ==:117
 a=cfXdPu6Ul6OsnrHrce2WRQ==:17 a=r77TgQKjGQsHNAKrUKIA:9 a=q2HaWy13AAAA:20
 a=oCcaPWc0AAAA:8 a=dmrhWiRAlyGHxnwzX3EA:9 a=QEXdDO2ut3YA:10
 a=aukWdSIhi2oQ9f3OssAA:9 a=m-Z_27IZkzAA:10 a=Va65v5KMAS5Rrfilet4A:9
 a=lUC3q8n_5PfBMt-q-dAA:9
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
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a multi-part message in MIME format.
--------------A98A91A7ED40ADFF24300404
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

hi martin

i activate your patch ; wlan works ;  also with only  edit GPIOX_11 wlan 
works

its now GPIO-402 out high ACTIVE_LOW  ( 3.3V on pin12)

i also attached the performance infos  Wlan0->Router and RAM->SDHC

Am 18.05.2020 um 00:31 schrieb Martin Blumenstingl:
> Hi Tobias,
>
> On Sun, May 17, 2020 at 11:05 PM Tobias Baumann
> <017623705678@o2online.de> wrote:
>> hi martin
>>
>> sorry for cc -problem it was my fault in thunderbird
>>
>> thanks for dtb file but this file has problem kernel stop with
>>
>> [    6.122092] mmc0: new high speed SDIO card at address 0001
>> [   35.804258] VCCK: disabling
>> [   35.808781] platform pwmleds: deferred probe pending
>> [   35.812625] platform sound: deferred probe pending
> pwmleds was also there in your last dmesg
> please ignore the sound part, I haven't tested it on that particular
> board in a while
>
>
>> [  215.804295] random: crng init done
>>
>> (last time deferred probe was gcc problem )
>>
>> please can you provide me with dts file and i complile at my linux box
>> or maybe only the change line and i use the dtb from image and edit the
>> lines like the usb patch
> you can get all my patches from here: [0]
> as always: some of them are not even in linux-next yet and there's a
> reason for that ;-)
> I have changed the GPIO_ACTIVE_* polarity for the two GPIOs in the
> sdio_pwrseq node if you want to do that by yourself.
>
>
> Best regards,
> Martin
>
>
> [0] https://github.com/xdarklight/linux/tree/meson-mx-integration-5.8-20200517
>


-- 
Diese E-Mail wurde von AVG auf Viren geprüft.
http://www.avg.com

--------------A98A91A7ED40ADFF24300404
Content-Type: text/plain; charset=UTF-8;
 name="iperf 3.10.99.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="iperf 3.10.99.txt"

DQpyb290QHZlZ2FzODEyIH4jIGlwZXJmIC1jIDE5Mi4xNjguMi41MCAtcCA0NzExDQotLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0NCkNsaWVudCBjb25uZWN0aW5nIHRvIDE5Mi4xNjguMi41MCwgVENQIHBvcnQgNDcxMQ0K
VENQIHdpbmRvdyBzaXplOiAyMC43IEtCeXRlIChkZWZhdWx0KQ0KLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpbICAzXSBs
b2NhbCAxOTIuMTY4LjIuMjAgcG9ydCA1MDU3NyBjb25uZWN0ZWQgd2l0aCAxOTIuMTY4LjIu
NTAgcG9ydCA0NzExDQpbIElEXSBJbnRlcnZhbCAgICAgICBUcmFuc2ZlciAgICAgQmFuZHdp
ZHRoDQpbICAzXSAgMC4wLTEwLjAgc2VjICA1NC4xIE1CeXRlcyAgNDUuMiBNYml0cy9zZWMN
Cg==
--------------A98A91A7ED40ADFF24300404
Content-Type: text/plain; charset=UTF-8;
 name="dd 3.10.99.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="dd 3.10.99.txt"

cm9vdEB2ZWdhczgxMiB+IyBkZCBpZj0vZGV2L3plcm8gb2Y9L3Jvb3QvdGVzdGZpbGUgYnM9
NTEyTSBjb3VudD0xIG9mbGFnPWRpcmVjdA0KMSswIHJlY29yZHMgaW4NCjErMCByZWNvcmRz
IG91dA0KNTM2ODcwOTEyIGJ5dGVzICg1MzcgTUIsIDUxMiBNaUIpIGNvcGllZCwgNTYuNjA0
OCBzLCA5LjUgTUIvcw0K
--------------A98A91A7ED40ADFF24300404
Content-Type: text/plain; charset=UTF-8;
 name="iperf 5.7.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="iperf 5.7.txt"

cm9vdEBhbWwtczgxMjp+IyBpcGVyZiAtYyAxOTIuMTY4LjIuNTAgLXAgNDcxMQ0KLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQpDbGllbnQgY29ubmVjdGluZyB0byAxOTIuMTY4LjIuNTAsIFRDUCBwb3J0IDQ3MTENClRD
UCB3aW5kb3cgc2l6ZTogNDMuOCBLQnl0ZSAoZGVmYXVsdCkNCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KWyAgM10gbG9j
YWwgMTkyLjE2OC4yLjIwIHBvcnQgMzQ1NDAgY29ubmVjdGVkIHdpdGggMTkyLjE2OC4yLjUw
IHBvcnQgNDcxMQ0KWyBJRF0gSW50ZXJ2YWwgICAgICAgVHJhbnNmZXIgICAgIEJhbmR3aWR0
aA0KWyAgM10gIDAuMC0xMC4yIHNlYyAgNDQuNiBNQnl0ZXMgIDM2LjcgTWJpdHMvc2VjDQpy
b290QGFtbC1zODEyOn4jDQo=
--------------A98A91A7ED40ADFF24300404
Content-Type: text/plain; charset=UTF-8;
 name="dd 5.7.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="dd 5.7.txt"

cm9vdEBhbWwtczgxMjp+IyBkZCBpZj0vZGV2L3plcm8gb2Y9L3Jvb3QvdGVzdGZpbGUgYnM9
NTEyTSBjb3VudD0xIG9mbGFnPWRpcmVjdA0KMSswIHJlY29yZHMgaW4NCjErMCByZWNvcmRz
IG91dA0KNTM2ODcwOTEyIGJ5dGVzICg1MzcgTUIsIDUxMiBNaUIpIGNvcGllZCwgNzUsODM2
NSBzLCA3LDEgTUIvcw0K
--------------A98A91A7ED40ADFF24300404
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--------------A98A91A7ED40ADFF24300404--
