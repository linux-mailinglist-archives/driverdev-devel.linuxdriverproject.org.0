Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45118114664
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Dec 2019 18:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4175425D30;
	Thu,  5 Dec 2019 17:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YiDvmPNcUqMd; Thu,  5 Dec 2019 17:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AD45220452;
	Thu,  5 Dec 2019 17:59:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 261801BF228
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 17:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 22EF187492
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 17:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JezMZkBHzvWh for <devel@linuxdriverproject.org>;
 Thu,  5 Dec 2019 17:59:05 +0000 (UTC)
X-Greylist: delayed 00:07:51 by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A42EB86A10
 for <devel@driverdev.osuosl.org>; Thu,  5 Dec 2019 17:59:05 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id n9so4395065wmd.3
 for <devel@driverdev.osuosl.org>; Thu, 05 Dec 2019 09:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oCM4XV1Q03JY+XBq9T6ZfcKWAdi4Qy0y0BTDkhuSdK8=;
 b=rUUZO+tlZzLRden5dfFouYXg0QIWLwv/o1dpU4E0jB2dbxHG5mjyFTXL2bQqj2kFWP
 XJXVjII9dl3AYnHEFsIXWs0vdFia0VA2nUjpXuvtMA3I251xQS1dLJ6GAV49tIiReCgP
 dxgBD6gnC/4CpalBbHQ2l6dpt9UIv6EUbyQsIoxi1+Xvsh+ytXP1a8N7Cxc23wqKv3O+
 +qkNziS4kURfQFcfde43OIjvMkIUdkQLxLhYiRD0qiKg6y5lalJ0cEPGCVWmlLJVlXq6
 mn4xvP3e122eBXBFMSKCmlGLvxArTJoJdRRfj/mzMDwJUkL8k8LWzNcUs2pGG5nE4MVT
 39Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oCM4XV1Q03JY+XBq9T6ZfcKWAdi4Qy0y0BTDkhuSdK8=;
 b=ikP8mJs8n/YUmMI+F+pcOtbpBe7Ol6QpkEQHqn50fdGWVZ7OM1W0MLm1FAPvOj6E76
 XRLJ4TxsEfeyLZ/08dv8t7Jz+8mDanjlSIe2yWnJEm0YJI+zzesWobgJXb4tGm9P7OJY
 BeW+43kbHHceqzxQksXa74wnCom/hYhxjztTutjZ3VGAN7sFbQ+Q6R4Ho/kjbZd3uave
 6gFBjWE6IBgX1rjBx1cwrmknzgf+yK1aKn2VOul3ODjsADGXtIyOC7PqVACdjD56TeEA
 H7u/NauN1gV2p0QhzAt/u8vZbvFU+3+tj7J++k6yLVJhVYkMbLao9Wy/qTXEEbU69lah
 ifzg==
X-Gm-Message-State: APjAAAWR/AWKjEQUuJeaEmBc8lTvwm8f2IS2YMBFw8BDExzypb3odK7V
 NhIzHAAdfuEvuoqkqB3+/E5pQn0QSaGk8SJM4rK3tD3Z
X-Google-Smtp-Source: APXvYqzM+6BtOmXiHeieEzyKgkgjghFIiNlwlmqqI+bMdHx555C+saCk7bgi/8U0cUpJ14tc1MoLDJlILEKaQj/N6Ww=
X-Received: by 2002:a1c:5419:: with SMTP id i25mr6584531wmb.150.1575568271878; 
 Thu, 05 Dec 2019 09:51:11 -0800 (PST)
MIME-Version: 1.0
References: <20191204234522.42855-1-brendanhiggins@google.com>
In-Reply-To: <20191204234522.42855-1-brendanhiggins@google.com>
From: David Gow <davidgow@google.com>
Date: Thu, 5 Dec 2019 09:50:59 -0800
Message-ID: <CABVgOSn7tTYuMZ8ArA3fRWp4aeKAcKJ3qNL+SgtFt5fkBLnc-A@mail.gmail.com>
Subject: Re: [PATCH v1] staging: exfat: fix multiple definition error of
 `rename_file'
To: Brendan Higgins <brendanhiggins@google.com>
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 valdis.kletnieks@vt.edu,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 4, 2019 at 3:46 PM Brendan Higgins
<brendanhiggins@google.com> wrote:
>
> `rename_file' was exported but not properly namespaced causing a
> multiple definition error because `rename_file' is already defined in
> fs/hostfs/hostfs_user.c:
>
> ld: drivers/staging/exfat/exfat_core.o: in function `rename_file':
> drivers/staging/exfat/exfat_core.c:2327: multiple definition of
> `rename_file'; fs/hostfs/hostfs_user.o:fs/hostfs/hostfs_user.c:350:
> first defined here
> make: *** [Makefile:1077: vmlinux] Error 1
>
> This error can be reproduced on ARCH=um by selecting:
>
> CONFIG_EXFAT_FS=y
> CONFIG_HOSTFS=y
>
> Add a namespace prefix exfat_* to fix this error.
>
> Reported-by: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Cc: Valdis Kletnieks <valdis.kletnieks@vt.edu>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Tested-by: David Gow <davidgow@google.com>
Reviewed-by: David Gow <davidgow@google.com>

This works for me: I was able to reproduce the compile error without
this patch, and successfully compile a UML kernel and mount an exfat
fs after applying it.

> ---
>  drivers/staging/exfat/exfat.h       | 4 ++--
>  drivers/staging/exfat/exfat_core.c  | 4 ++--
>  drivers/staging/exfat/exfat_super.c | 4 ++--
>  3 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> index 2aac1e000977e..51c665a924b76 100644
> --- a/drivers/staging/exfat/exfat.h
> +++ b/drivers/staging/exfat/exfat.h
> @@ -805,8 +805,8 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
>  s32 create_file(struct inode *inode, struct chain_t *p_dir,
>                 struct uni_name_t *p_uniname, u8 mode, struct file_id_t *fid);
>  void remove_file(struct inode *inode, struct chain_t *p_dir, s32 entry);
> -s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 old_entry,
> -               struct uni_name_t *p_uniname, struct file_id_t *fid);
> +s32 exfat_rename_file(struct inode *inode, struct chain_t *p_dir, s32 old_entry,
> +                     struct uni_name_t *p_uniname, struct file_id_t *fid);
>  s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
>               struct chain_t *p_newdir, struct uni_name_t *p_uniname,
>               struct file_id_t *fid);

It seems a bit ugly to add the exfat_ prefix to just rename_file,
rather than all of the above functions (e.g., create_dir, remove_file,
etc). It doesn't look like any of the others are causing any issues
though (while, for example, there is another remove_file in
drivers/infiniband/hw/qib/qib_fs.c, it's static, so shouldn't be a
problem).


-- David
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
