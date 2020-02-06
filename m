Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C8F154487
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Feb 2020 14:06:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 287962155D;
	Thu,  6 Feb 2020 13:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nHvLCg0t5VWt; Thu,  6 Feb 2020 13:06:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9E43B2010A;
	Thu,  6 Feb 2020 13:06:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B1251BF836
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 13:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3611F86165
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 13:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BQ5FddcTg0QQ for <devel@linuxdriverproject.org>;
 Thu,  6 Feb 2020 13:06:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 895AF867C5
 for <devel@driverdev.osuosl.org>; Thu,  6 Feb 2020 13:06:39 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id l6so2193016uap.13
 for <devel@driverdev.osuosl.org>; Thu, 06 Feb 2020 05:06:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zxNga9z+bqzzVroxYEdiyYn2FBBMLZCuOvPY3yafzJU=;
 b=P8XnrlpnQsgs3sznto87ELk4PCOJmkRV8oIwNvqnmXfj3Hv2Yv4JdgZcjLfj1cGtOg
 C65z/wU5y/GWSoiF550OO+pSVN8ABbqq/FyseKpMTkqEFmfu1mMvTFPPXnDEVABHhKaG
 87NKDTdAz6hnTG1ycRowpNFoDfRFM5gtkPSq6bt8ovtMcd9YWZpV3A0/qworN410DXPj
 JgUry1vmQbXudcxYIsl3wSFvf4phruxGg4E//DvMHDrs674hMqehMYRP3ZZAdO1Bk+3E
 MFkctBi5aXeN0hQpplAwosEzu6pmOZmrDrgIsGtSSUo2UuN+NzcOqEFq4Yky8jVGa2Vl
 408Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zxNga9z+bqzzVroxYEdiyYn2FBBMLZCuOvPY3yafzJU=;
 b=PbmSHp1jHNNqb3YC8xHGI/7Ff3ZLnJwBpugPaFkWxkCyeKTC6K4PvfvuS7sTOKJqce
 kX/E45i2TXnD9TvctJQ2J1sq63r1mlLoYi/L49D88xZf5cAtd5pRvYwsOzbNp9m9awrs
 eK8fedYTNPNSQT7ORhUF7qF/i5F/5pU/VQevaWPEdt+SQAJdTvOy0t119D7XxB3gKv5c
 f8rHkm35VGfplRFhpZs+8ipeRhgZ0tVVQxI4IsqpMRfsKdTMxJ10KAPjj6zzNv/sAM5D
 JeCXYyqupNRi28cQJIGUE3MyvEO6XgfObQ5GJ0SovFiQ2P+4TSDGNEolsnhhalFqRSMV
 MBwg==
X-Gm-Message-State: APjAAAVQEY0B8ux4mv4/k0GwF6noZK1x/we7eI38jr7t/6t7zUztZ8ZV
 Ht3aiWy7p04nCzQy9LoouJ8DZGDSYM4OK6WTjwg=
X-Google-Smtp-Source: APXvYqyiepijoYXT0w9jOthh76NhSwBKvoO3RDIjDnpJgrONVnEegbSic/ZQrxHIRDnlt2kTh5uRvNlVc09YuGaXBMg=
X-Received: by 2002:ab0:7025:: with SMTP id u5mr1585116ual.52.1580994398017;
 Thu, 06 Feb 2020 05:06:38 -0800 (PST)
MIME-Version: 1.0
References: <20200205123217.jreendkyxulqsool@kili.mountain>
In-Reply-To: <20200205123217.jreendkyxulqsool@kili.mountain>
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Date: Thu, 6 Feb 2020 18:36:01 +0530
Message-ID: <CAAs364-wmtnpfF0eQERhP5pUgRV1SCucW+hLPQgu0GKnFx982g@mail.gmail.com>
Subject: Re: [PATCH] staging: greybus: use after free in
 gb_audio_manager_remove_all()
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>, kernel-janitors@vger.kernel.org,
 Johan Hovold <johan@kernel.org>, Dinko Mironov <dmironov@mm-sol.com>,
 greybus-dev@lists.linaro.org, Greg Kroah-Hartman <gregkh@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 5, 2020 at 6:02 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> When we call kobject_put() and it's the last reference to the kobject
> then it calls gb_audio_module_release() and frees module.  We dereference
> "module" on the next line which is a use after free.
>
> Fixes: c77f85bbc91a ("greybus: audio: Fix incorrect counting of 'ida'")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/greybus/audio_manager.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/audio_manager.c b/drivers/staging/greybus/audio_manager.c
> index 9b19ea9d3fa1..9a3f7c034ab4 100644
> --- a/drivers/staging/greybus/audio_manager.c
> +++ b/drivers/staging/greybus/audio_manager.c
> @@ -92,8 +92,8 @@ void gb_audio_manager_remove_all(void)
>
>         list_for_each_entry_safe(module, next, &modules_list, list) {
>                 list_del(&module->list);
> -               kobject_put(&module->kobj);
>                 ida_simple_remove(&module_id, module->id);
> +               kobject_put(&module->kobj);
>         }
>
>         is_empty = list_empty(&modules_list);
> --
> 2.11.0
>
Thanks Dan for sharing the fix.

Reviewed-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
