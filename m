Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D14F2EED34
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 06:44:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A9D38757D;
	Fri,  8 Jan 2021 05:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EyxlINCRJBFP; Fri,  8 Jan 2021 05:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E90FA87565;
	Fri,  8 Jan 2021 05:44:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A3961BF863
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 05:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3EA672040C
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 05:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5drL-psa0l0J for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 05:44:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
 [209.85.210.51])
 by silver.osuosl.org (Postfix) with ESMTPS id 57BD4203DD
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 05:44:49 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id j12so8668343ota.7
 for <devel@driverdev.osuosl.org>; Thu, 07 Jan 2021 21:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dN7XgZiaahG9n5z68abqbWJt/hKn0HehLbVW0HG4KYk=;
 b=F4LCR8SFeymr3L6I9IMpBAqOjln4fubvxWUuu6ZbsmU6xWctmjkVDqa+j23NsdZUeJ
 2lbqgRfSx8pm609CeYUMden0X8f5qH0Irp+ydwQKmqYgw8Z/6D4RTFRsSX+YyUOd119c
 9Bfc29kUfbjj8Aexwzt4aip5WXjbRpz8nWT6aOd1V3JMENtdyA4LHiQiG8eJpurVTeIy
 ZwdlHbwIKT5W3nTD4Enql9zHaIfSiBNnraX9hviwAlz9ArpOFQOtMUtvUr4i/JL0AFLg
 PJB5KhL9JJxqUQvAYTMixwTdGoG2EKKDtBMXClSsECz+IZ25fZyF3dIntGJugRg4O1B2
 N8Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dN7XgZiaahG9n5z68abqbWJt/hKn0HehLbVW0HG4KYk=;
 b=qZF/TjfTog0dgwqmLhuMrb6jf7gQvu6a8X/GkqaITHz2iTbtaTZ8TGJFK45jtMIa2N
 Va0O4V4jYox89wFWLY2l/kbOctkF8hb5YeSM8gubcEriaw9lVhowWcTJTN2wezGqNtxl
 sU0xIWrLVYCdWmDSfl0P3zMlI4o6gH+o8w/1da6/8oKelhn0svRkLtCq+bwmsq6kBt6g
 wfGHyLPtGpx716JiLXmOWDXN2zL6rUcelTmWcAUg5LbOhOL3iFxSqCu0CjQYIv/bCBer
 YxQQoY12MmasKEx274lSR9ONjMBJNo7xUy2LKwU0uXSitcJJDwXjHNCLF43QNOsPmuVw
 tHHQ==
X-Gm-Message-State: AOAM5313HOMRMee7CBaiQfWAAKvRjVtrkp995RaZAmG0UEX70s4dEkG1
 zkSPeiavoWBMVfqPiROYhTSMI/LfdxXS6izHLhY=
X-Google-Smtp-Source: ABdhPJxqkHD8/hZsHWha7Yg6Ebl6JiAOdmUjcNyUQaZ32Ho/phTwGNlSwM+/HgMhRNU7VRuWjAVkOMCF0dWpbckONuk=
X-Received: by 2002:a9d:730e:: with SMTP id e14mr1531093otk.74.1610084688599; 
 Thu, 07 Jan 2021 21:44:48 -0800 (PST)
MIME-Version: 1.0
References: <20210108025155.31556-1-dqfext@gmail.com>
In-Reply-To: <20210108025155.31556-1-dqfext@gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 8 Jan 2021 06:44:37 +0100
Message-ID: <CAMhs-H-xJZUkm78eJcP8QctB9HFfVtMqWC=gM7E-6WfqwPgn0A@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-dts: remove obsolete switch node
To: DENG Qingfang <dqfext@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, NeilBrown <neil@brown.name>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Rosen Penev <rosenp@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 8, 2021 at 3:52 AM DENG Qingfang <dqfext@gmail.com> wrote:
>
> This was for OpenWrt's swconfig driver, which never made it upstream,
> and was also superseded by MT7530 DSA driver.
>
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> ---
>  drivers/staging/mt7621-dts/mt7621.dtsi | 7 -------
>  1 file changed, 7 deletions(-)

Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
