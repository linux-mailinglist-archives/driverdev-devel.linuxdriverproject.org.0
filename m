Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E9B24079
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 20:35:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 078B685C2E;
	Mon, 20 May 2019 18:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k2s_uRLQW7Vx; Mon, 20 May 2019 18:35:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B22D3854D0;
	Mon, 20 May 2019 18:35:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7471E1BF3A4
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 18:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7147F85700
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 18:35:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e+nKnNrZ-Tnh for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 18:35:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0816A85692
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 18:35:23 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id r136so10781374oie.7
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 11:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S2JqRW+pG/F6bPOhjbmAMkWQoXlDeA9p8vcg6LbBMCc=;
 b=ibAfEYKuxZUxiHNRrfU/fFnIC8PBn9XEK3phRre1SLzLIT25B7E3Mvl1OoDPeFHVe6
 VWFPyF/z99AlOg1BJdnlJ6z322M+QUV1zlQLVrZbgw3OIhxF4bBERF1HW7w82UAUkBMz
 BEJ/+2R+RAVE+M9hQ8c8Dg9lUVjy0dle4Q5Z+3mu/HmjMYgSiWd+uhPYhEqeCx+sBPiD
 NrDQT4GSiNTJYwZBwHbE1AoX9vHNveTMN0cpWXDOg/2W6fWwIQBIKFFH/EZLCtygb1cn
 Im8lqpnw4YgeCBiGlqBhsYZ3+een+koAK5Z4UUIuv23y0EpYM5j2TYwTrcka5QwZqp5I
 N4ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S2JqRW+pG/F6bPOhjbmAMkWQoXlDeA9p8vcg6LbBMCc=;
 b=o+sWUdotapHi/oxTcH5Hj2TNIbDRDLs6/4a76LkFAwvM9lIswTapSUCDRRfSPlW4wG
 HIJIHoBNl78+tJVz9bjlVbbD76jCrmzuT4rIJUPUP9FNknMkXft7YnyWr3WEi9XKf44m
 oWL+jG7q7iW95UBFDWhgP/WPVVDo6u4ig6e33Q14MstU6Hbb2aYsVDpyboOLeDr6XPnL
 ZI2SUubrwt/x4k5/NDoDnPQVp9GGCBDpQMf+M7MlMxRhFqV5TBBFgYfNQseIUsR8xsAI
 sbFb/6wpJx9Y9MS5aKRMbH9woChqTsT5adFep2ZyuMS5HgXxYnbyjMYFyXvH5ErSFCpV
 SHpQ==
X-Gm-Message-State: APjAAAVl/9e/1NEoiC9wZJm+RlsEWBeKMJnOrFgNBf6xGofVwGL90Y+a
 QEURwPZD+SnerYHQPzXUgFs3Q/bvQ0ufA1m+94k=
X-Google-Smtp-Source: APXvYqyRKT7MfTWY2+NhQ62iwNx9MnmMnvVhEyanVDSfe3Q2GM9qXaFhLE4XbFdslqm8Dwsdoo2RU6OLSoJJ05m3K/0=
X-Received: by 2002:aca:7250:: with SMTP id p77mr383079oic.103.1558377322098; 
 Mon, 20 May 2019 11:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <1558115396-3244-1-git-send-email-oscargomezf@gmail.com>
In-Reply-To: <1558115396-3244-1-git-send-email-oscargomezf@gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 20 May 2019 14:35:09 -0400
Message-ID: <CAGngYiUZmfnuj5WUnwk18szijmsQjF27j=OxQfJtp5bNORppRQ@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: solve warning incorrect type dev_core.c
To: Oscar Gomez Fuente <oscargomezf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Oscar, thank you for your contribution! I have a question, see inline.

On Fri, May 17, 2019 at 1:50 PM Oscar Gomez Fuente
<oscargomezf@gmail.com> wrote:
>
> These changes solve a warning realated to an incorrect type inilizer in the function
> fieldbus_poll.
>

Where is this warning generated? Could you provide some brief instructions on
how to reproduce this warning?

Thanks,
Sven
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
