Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63DE5FB8D
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 18:12:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C6A4987E8A;
	Thu,  4 Jul 2019 16:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dfGEyUF9j0es; Thu,  4 Jul 2019 16:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AE5787E81;
	Thu,  4 Jul 2019 16:12:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F7E01BF83C
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 16:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8CD5E87EA4
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 16:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Az5VkkDCf4K3 for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 16:12:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 075FD87E81
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 16:12:07 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id x21so6399097otq.12
 for <devel@driverdev.osuosl.org>; Thu, 04 Jul 2019 09:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cOm/HvLRodK9Gmtg8Pu+nD4Ju+GzARos9DN1PBnngww=;
 b=ZnLAO5N/cjBNnfi05k8nnzcwqeojnDRLbnWpeFhu55YnIK/VkStqmUt2q0KmoNHK7R
 326a9gF9U5YXEUtZK4LlrxAdtTRYmi22miuCjj1vKxSTW7sLqWAvrl8I4GXAUOzbrHCu
 SZsFWfcB89i2UCJgu4VLoD/7iQSwVlmeMihp/gsZVlp8PY8mfVfs5gjRrvab7/3GlOdW
 lovRk3VYcyt/HC3BP/C2sU2NoCCQMNoPuEu4+4MfHJZDDvqDsWAg5/nNn53VgF+A5Ytn
 p2leV/a6bbtjmjsJZVw4ZsaKL0ofI/LQzeLbgqNXCkPzCHb+3O7DiJ2xQ3JvGHDziQ0r
 8rwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cOm/HvLRodK9Gmtg8Pu+nD4Ju+GzARos9DN1PBnngww=;
 b=gyusbza2SiAuf0XXSa9wM4+Q/KI7MY6IoN+nt6uR7sW0lN1o4rYZY0YakUcHSPVy8p
 13HQcIAQmnTIFsLaCT5mgzItUITLXn64JbrGPuCi4sfG3X+JrG1FPb2b1yPRH0ib0pXR
 q59LUhVSrMiO+KpY8nLpQiRHF7EQ7Hq86cgI8E1Lz0eKwwR+iBbc1IudItkiF006pic2
 8DRfJAxFwUPQQ0R64s8XneBkNyYTz4bHNAR6I+IIceF/T7wdvnga4SvrrtjnV8mVfYWA
 PmxCeh1qfReB+kk3xdLqSfcbwkmak4JMn686OJZE9HFxYlo/pNtdTkPzOK7lGmDlLmm2
 g7Wg==
X-Gm-Message-State: APjAAAUJJMtQCcxyf1ELser5N46DmMNsskHAaQGXerf6pz1npgWvbIx0
 8y0IEGrFU2TX+HHpJ/MkhJ8CdIpoX0Xi0XrQEP0=
X-Google-Smtp-Source: APXvYqy4bWZa64/P36dEj/NLPY1nKF3u7sWYt5t9/HNW6LIUW4IHgRkpNfgNmSRLikr+xC7CPyWf3pdHpn5BOKIhuiQ=
X-Received: by 2002:a9d:76ce:: with SMTP id p14mr34242454otl.342.1562256726047; 
 Thu, 04 Jul 2019 09:12:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190704133031.28809-1-colin.king@canonical.com>
In-Reply-To: <20190704133031.28809-1-colin.king@canonical.com>
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Date: Thu, 4 Jul 2019 21:41:27 +0530
Message-ID: <CAAs364_ht9ubWrkr3qBYKofmCYUSsQPi-Ahqk4D+hG_JpDXreA@mail.gmail.com>
Subject: Re: [PATCH] staging: greybus: remove redundant assignment to variable
 is_empty
To: Colin King <colin.king@canonical.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, Mark Greer <mgreer@animalcreek.com>,
 Johan Hovold <johan@kernel.org>, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 4, 2019 at 7:00 PM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> The variable is_empty is being initialized with a value that is never
> read and it is being updated later with a new value. The
> initialization is redundant and can be removed.
>
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/greybus/audio_manager.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/audio_manager.c b/drivers/staging/greybus/audio_manager.c
> index c2a4af4c1d06..9b19ea9d3fa1 100644
> --- a/drivers/staging/greybus/audio_manager.c
> +++ b/drivers/staging/greybus/audio_manager.c
> @@ -86,7 +86,7 @@ EXPORT_SYMBOL_GPL(gb_audio_manager_remove);
>  void gb_audio_manager_remove_all(void)
>  {
>         struct gb_audio_manager_module *module, *next;
> -       int is_empty = 1;
> +       int is_empty;
>
>         down_write(&modules_rwsem);
>
> --
> 2.20.1
>
Reviewed-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
