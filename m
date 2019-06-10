Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7DC3B53B
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 14:51:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80ABC84DDD;
	Mon, 10 Jun 2019 12:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hqX1oQ-VQ+lL; Mon, 10 Jun 2019 12:51:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D09681E80;
	Mon, 10 Jun 2019 12:51:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C415C1BF2F8
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 12:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 98BFF84F2B
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 12:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ZxGWsfu_eZw for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 12:51:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7B17855FE
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 12:51:22 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id x24so8149477otp.7
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 05:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OGLWNA0OQOG5wWyxB9H8Hgmax5IuBsIxNtuEDQ1Ho3c=;
 b=l7OQWdNRtoQUdMIL/J3aLdcLG7lwN1wQG3eVC8xnOnhEcL0e2LZzQQ9vk85dW/M4XI
 QIUJNVgxJJse3crYXW4d4seEx+Piw6ZsqJgoGoM2XzXPkCgO/L2xCk/A+MRxS16nzjmz
 rNsEDpVHpheCwZarHvmp4TlrTDIgnJILy+kJ02CeQINQhAuoCgiWEDJqHEYZf/ofC5qv
 6po8XTmOjPEPsMfDM1oH7UkapXaxsR0j7t3ROLJnGsHlyzgKA9XWVAB1BK3Fr2fzwgis
 eSRwKU0jHp21zpJv0zl8z8XzTkhdRw4V9bVf7cpo9gk40+LDq80YRiVW/O9dXJxVZQ1V
 +dBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OGLWNA0OQOG5wWyxB9H8Hgmax5IuBsIxNtuEDQ1Ho3c=;
 b=ShwqCtNQZq2+RfQJv7ccs+i6HTrSzfP7D48Hz58zs/JLq9m1H88JpHbESfNzCE8TO5
 kR0h+t6EU2FFZKZzQKW2xDNoRbvJMDBLHp3vEMmGG7KUEJ7yQAL/Q+pApSHMXA/m1/3z
 rsCDdIMj1yZNPNQ/msaKJCpsjtRfPCBx6eaUO9okAZmTHNL6HZQQQucEXE2fm8ISTX+4
 LQQZNZkF9QgI4lTfyLLXRdkl2uQNJSd/oPCRH2jCMIGYk4+k2NlKU8PAnRcPSrgCidLw
 QfxQkGzgLJCsG0THvXpiPbnFm6Qan+9W5I4UZbEIl7cZWWGsTikIJCwfX1pp9nmyXDzF
 eIFg==
X-Gm-Message-State: APjAAAVyTSVh4u/haWp/wgf9aWNqNX+4KCnNYA9AImX0PfHykvC368Pi
 CB/Q4D8FaapA//meQr8mEsWbhnD7nuT8N10gTgg=
X-Google-Smtp-Source: APXvYqyQXjuj4lGYmy/SumwwBHmFKbZv9SJe8lb9ySDF6TAZi1e1lsa3INyyrtPsmejesuC5xQVc4uw+QcBtPppyHf8=
X-Received: by 2002:a9d:3bb4:: with SMTP id k49mr29303369otc.332.1560171081876; 
 Mon, 10 Jun 2019 05:51:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAGngYiU=uFjJFEoiHFUr+ab73sJksaTBkfxvQwL1X6WJnhchqw@mail.gmail.com>
 <20190528142912.13224-1-yuehaibing@huawei.com>
 <CAGngYiW_hCDPRWao+389BfUH_2sP4S6pL+gteim=kDrnb9UDzQ@mail.gmail.com>
 <3f4c1d4c-656b-8266-38c4-3f7c36a2bd7e@huawei.com>
 <20190528155956.GA21964@kroah.com>
 <CAGngYiW8Y3jt9ikb5e9LtfSkquZquLgB5iSRVXyka9fUXLrqYQ@mail.gmail.com>
In-Reply-To: <CAGngYiW8Y3jt9ikb5e9LtfSkquZquLgB5iSRVXyka9fUXLrqYQ@mail.gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 10 Jun 2019 08:51:10 -0400
Message-ID: <CAGngYiV9XsPL8Mk9_K9=0a-k6P6JN_waJvk5bDH+mDwGMAYbmw@mail.gmail.com>
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

Hello Greg, just a friendly ping regarding this patch. It got my Reviewed-by tag
two weeks ago, no further feedback from anyone. Is there anything you would
like us to do before queuing this?

Link to v2 that got the Reviewed-by:
https://lkml.org/lkml/2019/5/28/609

On Tue, May 28, 2019 at 1:31 PM Sven Van Asbroeck <thesven73@gmail.com> wrote:
> For the v2 patch:
> Reviewed-by: Sven Van Asbroeck <TheSven73@gmail.com>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
