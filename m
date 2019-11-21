Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C48131050C9
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Nov 2019 11:43:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D16B824DF9;
	Thu, 21 Nov 2019 10:43:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H4iN0oqkFfo8; Thu, 21 Nov 2019 10:43:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7773D2040B;
	Thu, 21 Nov 2019 10:42:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8E251BF372
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 10:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A2EF68639E
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 10:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gfuwwl9GbOby for <devel@linuxdriverproject.org>;
 Thu, 21 Nov 2019 10:42:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A638E85BBD
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574332959;
 bh=Cu4UP4LpQQZyVgOaPhov5Fz2MhBw3/A6/FSTmKY3tSM=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=P5RJn0cfJA7sMj952nkWENIGS3lkgP/unorWTE6fJwgnuS4MZzA62trs36xJC95YN
 d3zw2E3soIhOGQZZxlD30s41OHs08gaA5lrTLTu+RqzepH1/RDsFMArUkfvkYZ7XJR
 yzkgeRNowKZxpplPmwKRm8Igoop4+7z3Fu1aBSj8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.139]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MiaY9-1hsvRw0zRP-00fkqG; Thu, 21
 Nov 2019 11:42:39 +0100
Subject: Re: [PATCH 0/3] staging: vchiq: Fix vchiq_read return value in case
 of error
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>,
 gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
References: <cover.1574253964.git.marcgonzalez@google.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <f2f8b72e-3d56-e9e5-f381-5b80a09490dc@gmx.net>
Date: Thu, 21 Nov 2019 11:42:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <cover.1574253964.git.marcgonzalez@google.com>
Content-Language: en-US
X-Provags-ID: V03:K1:BIgGyu831W2jQdajxuzPFuZfaGt1VdEJjXLWXkXI0Knjl/EQ5PA
 mC2ZCPpmdX0KL879EjjYPC84kNCSBwyttlHBDnfLKIgQBFY+B4zb6J7hpdqQZhAkHXqyc1r
 o1nev7xgRM/07IJ4CERpu+RtnIPxuqmPoVg1m1gFI36aAapClTPmcU33o0o6iehq5d2Kq/v
 0LkGQmSAOINfsa/LWj4dg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:OUTuvdWfPD0=:e4MNm2rHRYeYZwLJFtCy6d
 KunRXm5TiN3BKE9WXRL+/Nh/8QY9BzV1iorH2OU9CxT44SsVV18AHAP4VcHv/mFhX/927dM8r
 GuRGdeMN8zNPNWwGTz/WZ1mBEVwa8gCsELwoxdQhDcuaatabM2n/q/BI/F7Zju5QO7HnlS6rA
 BGjm6XtaQzJxrCD2zeHXuBfldpEkP3jq65tpHfbX5w3NKvX919jjpWj2OvumP1lTCrkur8eeF
 eS4yuQI065aIJjbBi66kDbAFNoKGkL5cJNWJm2C3w9FmfjmsGTslHJZE92rF2QBxoPo11BiZY
 Mr+h9ER7QSJfoRjtwb/BGMEwse2IFutRyAUipUVlMCnCVKPRCbw+dTdlLmHFxSoAC10+mByJp
 1YCs6Eq62Wdd/isa60GbNKNAeTHYbY6wTYLlmlgyOzicQSZrgEPFes9jUHT+Mg3MqHn7pk3cw
 bh1pxLDeRLsAAhxDz57DRQwXx88WG61bJn/G/Y1b1pWxm6FUnEttwb8/2LIk3ug8q43D37aAm
 fkUBklB5cgWGI+129THQnKgUGuUsYMA3DHdWxvGMBIqMPy5+huUIf7D+lzw5cSIv+8bvKsFQk
 FlikrLx/8bwOiKX/KdeFYOOYbJXPscHYVjvgwzD1KOTx/SAZ6nyeJE4Eq6/33B8BbJmwZSmHl
 TVgqOwBTeyNX/3wb9ObGq3NV7YaTL5wAvAeIAq2mpiBKhBAl7UvkBs15SjP9VFgmbOP4x9p7H
 cwRwyz3RUvCA3esTCa2JJKbqMVy6NYVg7gusygkQpzUkX+kxRpnrA+2yqjgBP5pSFEilBKv3K
 6Tsm9D8VOHXQ6ks93HKzG6GFEQP7eEUNXSASMy7lD1sx0fHrmkWQdmaNq2Wl6+1wDVcyjmEm1
 k7uiwXVz6hO8p73BRXks9r2r70o8UQSReXsFpDzD3m7737inZ00AkF8XiFIecmzw+hW0yNUSu
 KOMdyBL5ngEGjF5IXGzxj8BzRlcMMtyJTCKWgbJOMtBNYz8uh55ijWcm6Kaya+TMmwad99y2I
 lB6XKsnDXyUl0JQiUT7XjvX6Ldntx5I6Ubt2qnUu9B3oGmzT01MjOkWWEfAcAdfJGFKz8S8M5
 OhCLo5OyC5tfRpGxppwKI9CTLP7NrTYuyt0AluFLElyvUpvzUHklaidZlCEfJdVBAt/pzf3gO
 Ng76k5nrBrhBAFwOQXNXeFBuLNYFqU1Dowq0oBAFrwJpJesK5w7fjpVBqTVIT+lvvI5Epsl2B
 CtELgZ3uOHe5nG8fqagPp5I71NvVOxjLk2IaDeWNFCGQ2vG9BJVXYM+s1A6Y=
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
Cc: devel@driverdev.osuosl.org, Phil Elwell <phil@raspberrypi.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Marcelo,

[add Nicolas and Phil]

Am 20.11.19 um 16:36 schrieb Marcelo Diop-Gonzalez:
> This is a proposed fix of an issue regarding the handling of positive
> return values from copy_to_user() in vchiq_read(). It looks like the
> struct dump_context passed to the vchiq_dump() function keeps track
> of the number of bytes written in the context->actual field. When
> copy_to_user() returns a positive value, this is set to -EFAULT. The
> problem is that this is never returned to the user, and instead the function
> continues, adding the number of bytes that should have been copied
> to context->actual.
>
> Running the following program:
>
> #include <stdio.h>
> #include <stdlib.h>
> #include <fcntl.h>
> #include <unistd.h>
> #include <errno.h>
>
> int main(int argc, char **argv) {
> 	int fd = open("/dev/vchiq", 0);
> 	if (fd < 0)
> 		exit(-1);
> 	sbrk(getpagesize());
> 	char *bad_buf = sbrk(0)-100;
> 	int x = read(fd, bad_buf, 2000);
> 	printf("%d %d\n", x, errno);
> 	puts(bad_buf);
> }
>
> gives this output:
>
> -1 1
> State 0: CONNECTED
>   tx_po
>
>
>   Remote: slots 2-32 tx_pos=578 recycle=1f
>     Slots claimed:
>
> Note the mangled output and incorrect errno value. Messing with the
> constants in that toy program changes the results. Sometimes read()
> returns with no error, sometimes it returns with a wrong error code,
> sometimes with the right one. But it seems that it only ever returns an
> error at all accidentally, due to the fact that the comparison between
> context->actual and context->space in vchiq_dump() is unsigned, so that
> that function won't do anything else if it ever sets context->actual
> to a negative value.
>
> After this patchset, the above program prints this:
>
> -1 14
> State 0: CONNECTED
>   tx_pos=b4a218(@165de6b4), rx_pos=ae0668(@f02b54f4)
>   Version: 8 (min 3)
>   Stats
>
> Help with testing would be appreciated. So far I've basically just
> diffed the output of 'cat /dev/vchiq', run the program above with
> a few different values, and run vchiq_test a few times.

i consider this as sufficient, but i'm not the VCHIQ expert.

Thanks
Stefan

>
> These were applied to the staging-next branch of the tree
> at git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>
> Marcelo Diop-Gonzalez (3):
>   staging: vchiq_dump: Replace min with min_t
>   staging: vchiq: Refactor indentation in vchiq_dump_* functions
>   staging: vchiq: Have vchiq_dump_* functions return an error code
>
>  .../interface/vchiq_arm/vchiq_2835_arm.c      |   5 +-
>  .../interface/vchiq_arm/vchiq_arm.c           | 129 ++++++++++--------
>  .../interface/vchiq_arm/vchiq_core.c          | 104 ++++++++++----
>  .../interface/vchiq_arm/vchiq_core.h          |  12 +-
>  4 files changed, 153 insertions(+), 97 deletions(-)
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
