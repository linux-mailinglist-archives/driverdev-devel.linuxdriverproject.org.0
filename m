Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CA920C35A
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 19:43:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B5F42153E;
	Sat, 27 Jun 2020 17:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wjpXNBRToI-t; Sat, 27 Jun 2020 17:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B956B2094E;
	Sat, 27 Jun 2020 17:43:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D38901BF421
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 17:43:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CFEC188206
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 17:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d1J4Rq4lGmNi for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 17:43:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BBF9B881EC
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 17:43:03 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id n24so13533775lji.10
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 10:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gSgvKoi8G4VJMQGHrpyGDqm81BfA5NfOfyYIB+GxuOo=;
 b=Yd3FcI+TF5ttPlgmz/FVconDLMEluWECcFaIwIr6L1Ca4/JG/AksUsC1fI4s2bdVJt
 iDjEqDVoGdGqorZxxvYJ7xgwW74pqPN5sngf9Lwgt7uYnveqnzjacO8AEfMAm39k52jW
 pH20hC3xsnt6htLc19XkWX+55CCJcfSg0QlpBQS5cBAA4yWxIWiCVG+oJ7gDmo05Ov8b
 /uyYZ1PWy7GO7Vj6JjUV1KRMhNoU4zOuydsILBp6xZugVe9q3SeLIpGtE5XhOIjeWa7b
 rd8rjGYPBXf6QAD0buLMpbXg2XwxZTqH8l7UlJpPPDl6JinekU9WsDXGXbJG9mXOfe17
 ZuBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gSgvKoi8G4VJMQGHrpyGDqm81BfA5NfOfyYIB+GxuOo=;
 b=hjq6NgFi1EMEgm/PZp4/1lun9fKmprOaNgdAs4lF/txbE2H91XRBILl4+yzvOkDscq
 QNXgC1v8/8jzVSc8hOzFgV5u+XvV8mUQM8y9jvn5fldhSgTLh6t1lHVdg+2rStL1ioXR
 qEotyvp6ajVQmPascm3gznHyuWvP9OWnICoPcB7V9Wt8GvmvQcwyJdzXOGE+l3KZtHcu
 iKzC+9pQvGTC0Z7HJ8A+1fYQHfX/nfQBDJIxSSaspJSbfyX5eOOUXkm6Z/KSKWtqCxir
 gDHSkYYbi678FcoDSmcImnQv8xPIFuOhvEaqZL0rW3FTGOiQQJ3HBQCzUDLsJus4fg5f
 E/hw==
X-Gm-Message-State: AOAM531H+aQsLSKY4ErzqVyiGf5coKpgO6BtskTbgjQI2zEGNvy0l2O7
 9wJIwdPlwklvQj+KE8RXxb9SIgM6mzJRxiqtJrA=
X-Google-Smtp-Source: ABdhPJx6hBa/cu1yII7uuXIyp5aFYbUQXzbHOLF6Z5trZh+dtVFSW/dDyPy8xJl2UMyiIyGWV8YoF5FQrzwFRIRIoUs=
X-Received: by 2002:a2e:50b:: with SMTP id 11mr3470506ljf.458.1593279781666;
 Sat, 27 Jun 2020 10:43:01 -0700 (PDT)
MIME-Version: 1.0
References: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
 <1592360843-3440-3-git-send-email-jrdr.linux@gmail.com>
In-Reply-To: <1592360843-3440-3-git-send-email-jrdr.linux@gmail.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Sat, 27 Jun 2020 23:21:18 +0530
Message-ID: <CAFqt6zZgrBkwB8ZVn4Lescnvy0kspVoWgaA4oAHkdG1YA90ZzA@mail.gmail.com>
Subject: Re: [PATCH 2/4] staging: kpc2000: kpc_dma: Convert set_page_dirty()
 --> set_page_dirty_lock()
To: Greg KH <gregkh@linuxfoundation.org>, jane.pnx9@gmail.com, pakki001@umn.edu,
 ldufour@linux.ibm.com, harshjain32@gmail.com, 
 =?UTF-8?Q?Simon_Sandstr=C3=B6m?= <simon@nikanor.nu>, 
 Michel Lespinasse <walken@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Bharath Vedartham <linux.bhar@gmail.com>, linux-kernel@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 17, 2020 at 7:50 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>
> First, convert set_page_dirty() to set_page_dirty_lock()
>
> Second, there is an interval in there after set_page_dirty() and
> before put_page(), in which the device could be running and setting
> pages dirty. Moving set_page_dirty_lock() after dma_unmap_sg().
>
> Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> Suggested-by: John Hubbard <jhubbard@nvidia.com>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> Cc: Bharath Vedartham <linux.bhar@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index b136353..bcce86c 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -214,13 +214,13 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
>         BUG_ON(!acd->ldev);
>         BUG_ON(!acd->ldev->pldev);
>
> +       dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
> +
>         for (i = 0 ; i < acd->page_count ; i++) {
>                 if (!PageReserved(acd->user_pages[i]))

Question -> is PageReserved() used with specific purpose not PageDirty() ??

> -                       set_page_dirty(acd->user_pages[i]);
> +                       set_page_dirty_lock(acd->user_pages[i]);
>         }
>
> -       dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
> -
>         for (i = 0 ; i < acd->page_count ; i++)
>                 put_page(acd->user_pages[i]);
>
> --
> 1.9.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
