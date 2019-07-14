Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A796812C
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 22:37:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A03C620766;
	Sun, 14 Jul 2019 20:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XtCr203gQky3; Sun, 14 Jul 2019 20:37:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0D5392049A;
	Sun, 14 Jul 2019 20:37:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C23F1BF59D
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 20:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 58E2D86D73
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 20:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m0Tah4VPj++y for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 20:37:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic308-18.consmr.mail.ir2.yahoo.com
 (sonic308-18.consmr.mail.ir2.yahoo.com [77.238.178.146])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5638385D00
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 20:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1563136664; bh=56HhVaYrGJR6MKwMAHA5oXMmLrE4kBnjCe5YrgJnE0Q=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject;
 b=LBVonwQsN5e1h+8twAyK4Bz6KelFe9ulpY5LwKqdKqrGZ2uZ21p0HI1GDPDKz5XDyQsRo6i5E+V3wFV3o3sqibGCKMwtdsa23DiyE1/39UULrgThnsvI0tFc4h1irxadOXVVEOkhn3PBfMKqQxpPC2x9LVEXxyqFSH1RJn+B4cFLNTJZvdLbmaf23p/9OsesOTQlaXAX0UD4kZnL9WMdrOYpAZwY8rQNdtDGDwedXU1UYWX5prBa7DYuZ1ANNlWsBmQX8ZLWGfvN2SGgLxkdnHZ4Zi4MMSMQSoj+NibdNIW8YJPb3Epyx9su8A49o3TkgE0Vvpi/CI52LCAaGlc+Eg==
X-YMail-OSG: 5f5JlG0VM1nEWdED4kc1O5vDYV1TBMbik3rr6xHjhcOE0YrkOxozeOqftS2pMA8
 uw1GF3zBCAy3dSmGgFvmalRWSNS5ifsJZK0ahvVX1e2li8eSn.7_wP_iChD0o79Sc9BOw1jvBiBo
 3wrA4r70efi_UHxnQZEve68AyHtK349bIU875z9q.ssyngPfhfQNL7poB8814er2SE2dx793dddW
 X5xSFSYDX72RUdAE5Iqz_bGbUUQOVgsbGugtpAMJIo0Fwy1vvX3sYPm3nc4M68.q.AV_IPIg9lil
 QSSdvCmoZpMydj8N6VYq6Mfewly5EtIfNmMRBNW5AYzKtRED2s0lIruwoMoJQ1yo70ZrexRjJLwr
 qEBiwPMwgVSxLte9u8INfUcaPyhBbCqNPGmpb9bQ52KSpXrYoEEGAJXbUxWvfK4A0rC48Kotvwv5
 F8ci6VsS0qkJHLPsH9D1zK.LAQA63epbHgOzSAMa.ZmsI7Za.YYss_swumkilNXlvMyEh7pevYtW
 eljhaJTLyIQhMBhU3sdSPe7KgYWx4o6JJKmG0wlS5Cj6RO6Hbz61oGi0VqJB2V1SYjjtsLQgooDV
 RkGqrMpC9LD4jg7dt.KJqHw.r153K8GhRhbyC1ofu_wUqO4_mQvB8aCraTQoz7dVed4jqXel60N7
 gY3fW_Lakfd4rPYvBoZHLN_8IAV6M9AnrpAa0Ay1vYZ7C37lGxhUmWsHhdtNd.0tk9pXWKf5aaQu
 5iACGLixi0Gd7zmgQnKmkMpHvkSyfyQFWbME9wKy0jJoQJMhbM1xafy9bmLUL8f.ZxXRNxHTS1Nf
 _Evb4foUrDqJKca.Xccl9DX5vUKayfvhGfAxiMq.efxZGjw3XjGGgm8tHTKdsU_yIswx6M.ksTM3
 UilyGVCJnnqd1oFZmSitLxLckDaSZ.iwcEXICBTTI_S5fsfcwpWQSxVJlVGaJ2OPVlJvoXQ97oIX
 CM3fMzYb3q0iUSEzALZp33xpajR.gvJMEJhI99qLXcMClCRxtTjShcKiVSrgSdWOD_oDcNNb.G7n
 3IAovnPSWyOmtHeuGZ_28GXZhoRfmTrORKCT3Z89hJbGKcTc7sK0T2pVaDQiFFgjc66ssP1LrpoK
 2nQPbQo3h0LAvxdtMhMYRahH8dU9_6Odjjlhf8KjhYqOJEn5ifOdINwY.VndlIApGFPNsQcBb72h
 vJ_f62vLvQ5tqOgG_JUBI9hMqlfBUcWKWGHOecLuIpwP9JUwPsLqMC4SWd4s-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ir2.yahoo.com with HTTP; Sun, 14 Jul 2019 20:37:44 +0000
Received: by smtp403.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID a912500c5590c551bd3365812827a21d; 
 Sun, 14 Jul 2019 20:17:34 +0000 (UTC)
Subject: Re: [PATCH v2 00/24] erofs: promote erofs from staging
To: Pavel Machek <pavel@ucw.cz>, Gao Xiang <gaoxiang25@huawei.com>
References: <20190711145755.33908-1-gaoxiang25@huawei.com>
 <20190714104940.GA1282@xo-6d-61-c0.localdomain>
From: Gao Xiang <hsiangkao@aol.com>
Message-ID: <63b9eaca-5d4b-0fe2-c861-7531977a5b48@aol.com>
Date: Mon, 15 Jul 2019 04:17:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190714104940.GA1282@xo-6d-61-c0.localdomain>
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
Cc: devel@driverdev.osuosl.org, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-erofs@lists.ozlabs.org,
 LKML <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Pavel,

On 2019/7/14 18:49, Pavel Machek Wrote:
> On Thu 2019-07-11 22:57:31, Gao Xiang wrote:
>> Changelog from v1:
>>  o resend the whole filesystem into a patchset suggested by Greg;
>>  o code is more cleaner, especially for decompression frontend.
>>
>> --8<----------
>>
>> Hi,
>>
>> EROFS file system has been in Linux-staging for about a year.
>> It has been proved to be stable enough to move out of staging
>> by 10+ millions of HUAWEI Android mobile phones on the market
>> from EMUI 9.0.1, and it was promoted as one of the key features
>> of EMUI 9.1 [1], including P30(pro).
> 
> Ok, maybe it is ready to be moved to kernel proper, but as git can
> do moves, would it be better to do it as one commit?
> 
> Separate patches are still better for review, I guess.

Thanks for you reply. Either form is OK for me... The first step could
be that I hope someone could kindly take some time to look into these
patches... :)

The patch v2 is slightly different for the current code in the staging
tree since I did some code cleanup these days (mainly renaming / moving,
including rename unzip_vle.{c,h} to zdata.{c,h} and some confusing
structure names and clean up internal.h...). No functional chance and I
can submit cleanup patches to staging as well if doing moves by git...

Thanks,
Gao Xiang

> 							Pavel
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
