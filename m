Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472582CDA2
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 19:32:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38D2687820;
	Tue, 28 May 2019 17:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eiLVMjxXG27c; Tue, 28 May 2019 17:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65BB587A80;
	Tue, 28 May 2019 17:32:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D4F831BF2B8
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 17:32:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C9B72873DA
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 17:32:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BqJvi7MLSnNN for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 17:32:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5D2ED87A5E
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 17:32:05 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id y124so14946689oiy.3
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 10:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=69Lkov6l/YB/g8drnt7LyM8Q4caLCPlGFpwyFiDm+Fo=;
 b=VYeNvbuDqk8y3j69S5xOU3CpUaGT4a0Z6qnHUepKh733tlWbbDhfymXdNShIk149Lw
 rRlczBX52L6p2zhDLux8TM+hsLjA4wc7XacC0mjdPvsGN6DmCCqPDG44VTfXvrXiuP+D
 Pgq8ci5GHN7n/OwXsNcD+RxTofVdtGqPGrurJ9Idyrt+rDVriKAc0shCOVgPKBL8WxnC
 zlEA/FLewbomDR3+r4OxAk7YZn88Ph3/vOau5KwUqxtCULuvbNue33gSpqvPzLiEu5Jm
 J4jKkjVh7K1DWni1JjPf1YITzZTTv/FJ/dIfFOQIofs+Wl+CyXAEmAkqi6FGWKjhGWii
 bJ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=69Lkov6l/YB/g8drnt7LyM8Q4caLCPlGFpwyFiDm+Fo=;
 b=DwhqiLfV3zrbDElHSsFGDZr+pEF0hQJfkiVqNLe+0g3qYVhpI2ICxs5M+at3hnsjJ/
 om1n6j1A70CrYoSKg0XH5z6pCWK6M3wBQxH/JcrSeDirSb4QWdAs7k5EsaA69PbkYajp
 rRXy6v1QsGtHFQCKbyrXe5t+fhYbOzI6U28ZUxt0X18Sf3/9HDI6tiNAXO3iVZz3UEol
 Ei/36W7gX52NMONLkGPdeKJB5I7w5uBDqOSmeqKkZXMZVrhqy6sMnrH69B+wKgxxfiQh
 hz3c7O0vF5pKc8am3Imk+MlKiISKIBr9kyFFZP+tR+jAZNgamgPkbn6TwsAzkpAi+ILr
 q7zw==
X-Gm-Message-State: APjAAAUuJGXmTlimzAU/emSAmD1dTGTYKt/jJ2BmCBjtnK0nM75PN5oh
 64BFH7dVh3sct32OZCFToWMlCdAl/xWOL/6w6PI=
X-Google-Smtp-Source: APXvYqxn+HNU/x1cDWahCiYdLUAroXji3RhlAzBTq6bh/v0lg1ZTn6o1Cg3i0g6ncRZ1i0tVs9UbPO9+4sAfRzBn7SU=
X-Received: by 2002:aca:580b:: with SMTP id m11mr3252148oib.169.1559064724380; 
 Tue, 28 May 2019 10:32:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAGngYiU=uFjJFEoiHFUr+ab73sJksaTBkfxvQwL1X6WJnhchqw@mail.gmail.com>
 <20190528142912.13224-1-yuehaibing@huawei.com>
 <CAGngYiW_hCDPRWao+389BfUH_2sP4S6pL+gteim=kDrnb9UDzQ@mail.gmail.com>
 <3f4c1d4c-656b-8266-38c4-3f7c36a2bd7e@huawei.com>
 <20190528155956.GA21964@kroah.com>
In-Reply-To: <20190528155956.GA21964@kroah.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 28 May 2019 13:31:53 -0400
Message-ID: <CAGngYiW8Y3jt9ikb5e9LtfSkquZquLgB5iSRVXyka9fUXLrqYQ@mail.gmail.com>
Subject: Re: [PATCH v2 -next] staging: fieldbus: Fix build error without
 CONFIG_REGMAP_MMIO
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 28, 2019 at 12:00 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> You all need a better email client, mutt handles this just fine, it's
> not a problem on my system with my workflow at all :)

Argh, my bad. I use Google Mail -> Download Message, which does
appear to mess up the endings. Luckily, dos2unix fixes it up just fine.

For the v2 patch:
Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>

Thank you YueHaibing.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
