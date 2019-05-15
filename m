Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C20491EB7A
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 11:53:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C82FE86C02;
	Wed, 15 May 2019 09:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U4NcbvykQFZo; Wed, 15 May 2019 09:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5AA286A4F;
	Wed, 15 May 2019 09:53:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60B011BF2F0
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 09:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5C0A786AB8
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 09:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t7Wg-nLXZeim for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 09:53:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CBFA986A4F
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 09:53:08 +0000 (UTC)
Received: from [192.168.178.167] ([109.104.37.15]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MpDa5-1gtz4V2OlD-00qm1F; Wed, 15 May 2019 11:52:44 +0200
Subject: Re: [PATCH v3 1/4] staging: vchiq_2835_arm: revert "quit using custom
 down_interruptible()"
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20190509143137.31254-1-nsaenzjulienne@suse.de>
 <20190509143137.31254-2-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <32aa420a-abff-4c47-5f3c-2d4bdf36781c@i2se.com>
Date: Wed, 15 May 2019 11:52:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509143137.31254-2-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:+2mE9d+u8gqtHxlIg9i/VWYK0DwNnPyY/oJuxZ3r/F7A3KhK9W5
 cCp7pwbA9bAjNpdxlK6/Iep9THU4dI6RvjpdTDtzvJY+58aqLLldc5xNr7PRhB9I86LmFKN
 LHCh1pkG91gS0EVAN2BnJ5cvewcs0PU/OIpW0n1Eae5noiidxp3qdh90d/vDYFuHLjNHC2p
 5n6T2maOg8eOxqC5nOgqw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:bG040yyGSrk=:IY/R0MsMaeOXHWlVqHUCLc
 Ab49FrqKWtQHzDyX1FqJXOxL8lqsOL0kN/Y7NCGyy8+UDEn/Am61+iCMA0wT25byRrvMZxD2p
 Vdv/l8YCNQDMTY3cR1Vx+Y34raHgM1CDYeX0+1f098O7ylSHTobIWa1TKpEr6LL3ahmbnWUq8
 gwEGuFTHCizj4BS3/LLXXoE8ytB/8sUiClJ1kvU2XzoTt1dBWz4EJjbNGe2AnHdzFm/EUaB5T
 zTnG4gedNErS7PNnwC6UeWBBzWoE0f1sV/gxR2ZvC//QkS1yBCCYO7xVe7NHMvWlSs0NG/Lpv
 VT230YoyV8WIPQ+XzCwa9CTFxZ4wv9T/zwWQMUXQ5WJBiiYzLnpJ2exZqNjoVg39Idhurb4nt
 4QPzCQRzXzk05ChMqk8eS3UBtQAAkXfsYqZjbtkDF8uRuZmTPxhysvyu3f3CE7C57TM91KaUh
 Ev/B9krLUayURXbRJo8Bb50/jZthCLjM9Yxh4VHdArHeLEamadd032nzfYRggpArjkgcunPWU
 kYxLOG0Ti7QvDTP5J+GXzOF1V2L7CNwLbaPmQFF7VkgoK6onYMdyAGxy4+QzNoBAwQcRks1Mi
 /v3xLzwun1zn6WmY5yJRkrN+N7lWDNMVewFUh1lBdzBoSesiu6JnkcDPhwZwwPyRo7ecJArOZ
 ErYlDk3nTR7aqj517fCWQc3kgy7rHVH7Biqw8C8BcnlvSLapFGn1BXacH39mT+nvq/tZ/D0Vb
 yPNUa4PHCrXh5aVABT/y2Zan8pMr8fOHC7NXYqcY4lGd7EYk3stnmXIQ+5A=
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Eric Anholt <eric@anholt.net>, linux-rpi-kernel@lists.infradead.org,
 dan.carpenter@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 09.05.19 16:31, Nicolas Saenz Julienne wrote:
> The killable version of down() is meant to be used on situations where
> it should not fail at all costs, but still have the convenience of being
> able to kill it if really necessary. VCHIQ doesn't fit this criteria, as
> it's mainly used as an interface to V4L2 and ALSA devices.
>
> Fixes: ff5979ad8636 ("staging: vchiq_2835_arm: quit using custom down_interruptible()")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

This whole series is:

Acked-by: Stefan Wahren <stefan.wahren@i2se.com>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
