Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 781DB1F86BB
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jun 2020 06:40:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F80F886CD;
	Sun, 14 Jun 2020 04:40:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VQ+Exw8ahIA7; Sun, 14 Jun 2020 04:40:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6AACE88565;
	Sun, 14 Jun 2020 04:40:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 818C81BF4E2
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 04:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6A4C1887DD
 for <devel@linuxdriverproject.org>; Sun, 14 Jun 2020 04:40:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zroaA-zT39rC for <devel@linuxdriverproject.org>;
 Sun, 14 Jun 2020 04:40:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C858E88773
 for <devel@driverdev.osuosl.org>; Sun, 14 Jun 2020 04:40:49 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id z63so5390523pfb.1
 for <devel@driverdev.osuosl.org>; Sat, 13 Jun 2020 21:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=X0jHmyTeV0liIsm64hbjioRiMTjKGIsGf1zJtDDDraA=;
 b=bxCvFM9b61L0pKFDnjXvxZ39M+doP2fx0OwF6xPJJqWW3Rbc13bCUyg0HBgCgUsLKm
 +D91gmU50kNXJkYkShzMH7MXG9WADaQFjdxb4LnYFc0CqGb76ZefvM15CrEyKWWAqLAj
 6Smm/j0Gy9dLYYCw6j3TbubSnYCbg84EYbJzmox2Z0adLVLPHCb8yDBYSpwWPChvoD8Q
 aMzqGl7gYG8dyVqMv+n4Fc9GYsKqiltn+DxOgaGqaLTn1bY1jOb7TEAgnQwH5iAwzf/x
 grXv8UQTC2uIJ8syF3Et85ChUlR7Yuj4LEsYArK/K+kX+KqoAiBXecWWTONivB2mQOaf
 brdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=X0jHmyTeV0liIsm64hbjioRiMTjKGIsGf1zJtDDDraA=;
 b=jsrRMtchB3C2YOM5Gnbpwxww/X7JUXCGt3jabVWQXirU/+ohqlM/daODOLPgtfoEdt
 7SNEWA81qmD05Z3VcnxGNxPBpWG7tuY7g+9mB7m6wvUEqAPIRsp3ZvAYjtDqWcrUSUmi
 Fagd2GQHCOh8yUwOhj0nLAYEaRLButo2uP6E/1Sjf8uUGv2HbzLFsYaULOEPkorn+n4j
 bvpBOs4Mo6uTMsRGLOjdBhfr+3RFgIRWwX1jugK+WX1JptIBBUj7hbNQunXWfEED/ZEl
 yOGu89rko/tYkWxcv3u9XhBDgvajgO5+nqkxyeJL/Z5wKV2TeVSEL1JH4iRQdBdRCnWd
 cj5A==
X-Gm-Message-State: AOAM531VxjXxvbGgaYzZ684uyNKftnZubGIpBqdP/rbhyu9sYEc1dCKo
 caVT/7JLx4RpgKDu8ZuBJHQ=
X-Google-Smtp-Source: ABdhPJzb2adrqnTPbnPaGL4A3WTJNegJCfYtKHsH9IYilutj906HsCC6K8L5onSe63iESCAeEtNNUQ==
X-Received: by 2002:a63:7d58:: with SMTP id m24mr16323995pgn.81.1592109649234; 
 Sat, 13 Jun 2020 21:40:49 -0700 (PDT)
Received: from ASMDT.1 ([182.1.234.31])
 by smtp.gmail.com with ESMTPSA id 192sm4228432pgg.39.2020.06.13.21.40.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 21:40:48 -0700 (PDT)
Subject: Re: [PATCH] staging: android: ashmem.c: Cleanup
From: Dio Putra <dioput12@gmail.com>
To: gregkh@linuxfoundation.org
References: <4ba43a70-c29f-6c41-9c81-66a25b0432af@gmail.com>
Message-ID: <77288a97-c87a-8ef2-60ab-e7f89cde07ff@gmail.com>
Date: Sun, 14 Jun 2020 11:40:42 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <4ba43a70-c29f-6c41-9c81-66a25b0432af@gmail.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Okay, my fault here. Changing the function a little bit didn't help unfortunately.

$ cd ~/git/linux/
$ make CC=clang W=1 M=drivers/staging/android
  CC      drivers/staging/android/ashmem.o
drivers/staging/android/ashmem.c:418:16: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
                        vmfile_fops = *vmfile->f_op;
                        ~~~~~~~~~~~ ^
drivers/staging/android/ashmem.c:370:31: note: variable 'vmfile_fops' declared const here
        const struct file_operations vmfile_fops;
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
drivers/staging/android/ashmem.c:419:21: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
                        vmfile_fops.mmap = ashmem_vmfile_mmap;
                        ~~~~~~~~~~~~~~~~ ^
drivers/staging/android/ashmem.c:370:31: note: variable 'vmfile_fops' declared const here
        const struct file_operations vmfile_fops;
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
drivers/staging/android/ashmem.c:420:34: error: cannot assign to variable 'vmfile_fops' with const-qualified type 'const struct file_operations'
                        vmfile_fops.get_unmapped_area =
                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
drivers/staging/android/ashmem.c:370:31: note: variable 'vmfile_fops' declared const here
        const struct file_operations vmfile_fops;
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
3 errors generated.
make[1]: *** [scripts/Makefile.build:267: drivers/staging/android/ashmem.o] Error 1
make: *** [Makefile:1735: drivers/staging/android] Error 2
$ 

On 6/14/20 12:37 AM, Dio Putra wrote:
> Minor cleanup to make file_operations const once again.
> 
> Signed-off-by: Dio Putra <dioput12@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> base-commit: aa5af974127d317071d6225a0f3678c5f520e7ce
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 8044510d8ec6..fbb6ac9ba1ab 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	static const struct file_operations vmfile_fops;
>  	struct ashmem_area *asma = file->private_data;
>  	int ret = 0;
>  
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
