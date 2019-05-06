Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC07615376
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 20:12:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD65286C59;
	Mon,  6 May 2019 18:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id php7dppoI78c; Mon,  6 May 2019 18:12:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E63DF86C37;
	Mon,  6 May 2019 18:12:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5FA551BF36C
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 18:12:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5CA8920796
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 18:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TMxRyaHnogoj for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 18:12:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by silver.osuosl.org (Postfix) with ESMTPS id CC63120780
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 18:12:47 +0000 (UTC)
Received: from [192.168.1.166] ([37.4.249.123]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MHFwM-1hS3hN2Tz6-00DJIf; Mon, 06 May 2019 20:12:29 +0200
Subject: Re: [PATCH v2 0/3] staging: vchiq: use interruptible waits
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20190506144030.29056-1-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <b2679404-ba00-d18e-fe15-44c6e280dc11@i2se.com>
Date: Mon, 6 May 2019 20:12:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506144030.29056-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:OO0YujQIAL03yiODcrGeZwSAoqP+QyZGcS3Rb/0D4viZDd3HuAr
 A0n/6hygucW8vIYS2sdJnsPBdTgKZVIeJrBLQfCJXdQU82yox2zXEi82Aeh1xK73P87Lwkf
 fdt1AfVEuBdqTkkgEITpoL3bFeRm3MvFQBya5po2xJvt4rt2lLSzf0NQlXFpi32U8ln6dhY
 NDXoAES+YgvwLNCrGIXTA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:3UH7jCBTWv8=:f5pksuQByHCya4v0SpsqPd
 rvQGgK/Xf2fZ9FYd+D6KuDn3qJN+Zbt9Tw+SFtQBpaq6cFtjdcKxJXw9Fy5JuQlVgwtBCX31b
 z0Z0Hl0XTK6phUUZkj7VGHQdgtexXFW8TPIHyFr7rIgwjxMPKJ+LxKO27AYkkUtd/vCF9U+lr
 xCigT9DIOy9Mwe8xe7yhDu/bnEn4MO4TwIrG4iU9woBrZgZV9vL/xKNwgTLi74duS9Q16ew5X
 VoAUCtjyPTO3kdUWffGc/512KXhfUkZwHCzzfWPyZ5LOnAee/MxoExhsgUppX/iB6n7Vd3roy
 Dvu3n0HeGlFQlFPj3AoduvgguL/J9ONCEIbVTRHdRbZ+CXcjHducbyhmgH5qyQOAgtGOXTadg
 rBOdc610VxGRLPEDH1kMYiJR3par4JD8+78izqlvoNEY75HoppdHzZeY2j8SZfGc/HJaSgbLi
 3Kas8kPfJgRZBLDDw4+C0QFEIz9qYjqSaTGS64OHFZMxonrm2hixuuXkn6pcNRzm/vkaBkEMQ
 YZ1til0P90w1e9vmGgK51WXz6YsEUZRdHWFnqkWQF9lT33dqWgu8/zuLjV4CHuLQ73+5mCdz9
 eVsae038tLQ+5C8LzogmOk/I6yTvlwHG36GhYxl7pkJgo2mtZW7qugKnhPpQ688Oz1niaOd6V
 TRl7aEpOA56HSzu+8FKf4FH++RBHLUE7dT2yQo47X5PU6S6BuDiLDvVeYoKDa6f1Rv792Ws3q
 crWF3LZmzEg8pNdmeg6mBWvOFSW1uX/f4LpOGp7o5LudukrpVUORNlxnGeA=
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 phil@raspberrypi.org, linux-rpi-kernel@lists.infradead.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Nicolas,

Am 06.05.19 um 16:40 schrieb Nicolas Saenz Julienne:
> Hi,
> ...
>
> Regards,
> Nicolas
>
> [1] https://github.com/raspberrypi/linux/issues/2881
> [2] https://archlinuxarm.org/forum/viewtopic.php?f=65&t=13485
> [3] https://lists.fedoraproject.org/archives/list/arm@lists.fedoraproject.org/message/GBXGJ7DOV5CQQXFPOZCXTRD6W4BEPT4Q/
>
> --
>
> Changes since v1:
>   - Proplery format revert commits
>   - Add code comment to remind of this issue
>   - Add Fixes tags
>
> Nicolas Saenz Julienne (3):
>   staging: vchiq_2835_arm: revert "quit using custom
>     down_interruptible()"
>   staging: vchiq: revert "switch to wait_for_completion_killable"
>   staging: vchiq: make wait events interruptible
>
>  .../interface/vchiq_arm/vchiq_2835_arm.c      |  2 +-
>  .../interface/vchiq_arm/vchiq_arm.c           | 21 +++++++------
>  .../interface/vchiq_arm/vchiq_core.c          | 31 ++++++++++++-------
>  .../interface/vchiq_arm/vchiq_util.c          |  6 ++--
>  4 files changed, 35 insertions(+), 25 deletions(-)
>
against which tree should this series apply?

Since the merge window opened the current staging-linus wont be
available soon.

Stefan

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
