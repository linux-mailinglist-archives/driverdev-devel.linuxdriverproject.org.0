Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 179278F041
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Aug 2019 18:13:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F0DFF22925;
	Thu, 15 Aug 2019 16:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k0Vr5fKlQjzP; Thu, 15 Aug 2019 16:13:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 21BBA204D2;
	Thu, 15 Aug 2019 16:13:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 776801BF3A6
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 16:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 67A6F883AE
 for <devel@linuxdriverproject.org>; Thu, 15 Aug 2019 16:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OZEvl4txDCaq for <devel@linuxdriverproject.org>;
 Thu, 15 Aug 2019 16:13:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 604DC88383
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 16:13:40 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id x4so2711793ljj.6
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 09:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FuOQKA7vgPA06is52x9xKpXiDGgbCZoxJgLKNkyGfUs=;
 b=GiMGu61r0de7kE+jxFqk2ISTMZec3MCIu0HBqAiSXGeSP8AeU/RC1ZhX/syTNiFag1
 vef2zaQMkRgI5yQRnEcUQA2HqnQz4O2DAMgPqxYorQxLdg6N07Qt35SI/EEKkX7h+ocx
 AGxQCZHY70aVP3rFrb29kL6nHWXMwFLTwSK+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FuOQKA7vgPA06is52x9xKpXiDGgbCZoxJgLKNkyGfUs=;
 b=JJ74RCLxUA7LN3lrRMznjM2u1hLeco9SKHym02NGadDnQGiPQ4bWpKINZzWWl8PALx
 dSCywoHRbmm0p728w711atqX0AKfLKafw3gGGGKT27GzI8eK+XyYHuBF+FXfEpqwHfhq
 M7Iob796IbicBqkuLYSEWQtInfK+kmw4phczAqt6SrFUXtFqWJZb3ugidLz5eQP3jDTD
 i56JeKScEbqprjXN1J9OUWI2EZH/RotPoNZFtDRGFgAHdg8ArQCJbKrE288Bq4RoDtuW
 BH8jFa9PmPmFLfGvN5N29Ms0EMAbxkbJL6wkdbrh74MCMQ2thWupBfe4ZA6WcmxWqlW7
 PjDQ==
X-Gm-Message-State: APjAAAWi3imi9uzOy1y8VAKKSjrsjbLUWhVo3j42YLqD1f1doKWQxAEZ
 WwxA43qGTr0/MyqLRyhXlYt9t7BEVhc=
X-Google-Smtp-Source: APXvYqxEwuCSVY0Fm3KT2bGiSGYU4CCBA8pM1ZYpRBq+gK+rTreteyo3N4c3e3oW102ZCskYPNvi5w==
X-Received: by 2002:a2e:998b:: with SMTP id w11mr3179956lji.43.1565885617610; 
 Thu, 15 Aug 2019 09:13:37 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com.
 [209.85.208.169])
 by smtp.gmail.com with ESMTPSA id t8sm552694ljg.70.2019.08.15.09.13.35
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 15 Aug 2019 09:13:36 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id l14so2727007lje.2
 for <devel@driverdev.osuosl.org>; Thu, 15 Aug 2019 09:13:35 -0700 (PDT)
X-Received: by 2002:a2e:7018:: with SMTP id l24mr3046966ljc.165.1565885615360; 
 Thu, 15 Aug 2019 09:13:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190815044155.88483-1-gaoxiang25@huawei.com>
 <20190815044155.88483-8-gaoxiang25@huawei.com>
In-Reply-To: <20190815044155.88483-8-gaoxiang25@huawei.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 15 Aug 2019 09:13:19 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiUs+b=iVKM3mVooXgVk7cmmC67KTmnAuL0cd_cMMVAKw@mail.gmail.com>
Message-ID: <CAHk-=wiUs+b=iVKM3mVooXgVk7cmmC67KTmnAuL0cd_cMMVAKw@mail.gmail.com>
Subject: Re: [PATCH v8 07/24] erofs: add directory operations
To: Gao Xiang <gaoxiang25@huawei.com>
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
Cc: Jan Kara <jack@suse.cz>, Chao Yu <yuchao0@huawei.com>,
 Dave Chinner <david@fromorbit.com>, David Sterba <dsterba@suse.cz>,
 Miao Xie <miaoxie@huawei.com>, devel@driverdev.osuosl.org,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>, Christoph Hellwig <hch@infradead.org>,
 Amir Goldstein <amir73il@gmail.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Fang Wei <fangwei1@huawei.com>, Pavel Machek <pavel@denx.de>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 14, 2019 at 9:42 PM Gao Xiang <gaoxiang25@huawei.com> wrote:
>
> +
> +static const unsigned char erofs_filetype_table[EROFS_FT_MAX] = {
> +       [EROFS_FT_UNKNOWN]      = DT_UNKNOWN,
> +       [EROFS_FT_REG_FILE]     = DT_REG,
> +       [EROFS_FT_DIR]          = DT_DIR,
> +       [EROFS_FT_CHRDEV]       = DT_CHR,
> +       [EROFS_FT_BLKDEV]       = DT_BLK,
> +       [EROFS_FT_FIFO]         = DT_FIFO,
> +       [EROFS_FT_SOCK]         = DT_SOCK,
> +       [EROFS_FT_SYMLINK]      = DT_LNK,
> +};

Hmm.

The EROFS_FT_XYZ values seem to match the normal FT_XYZ values, and
we've lately tried to just have filesystems use the standard ones
instead of having a (pointless) duplicate conversion between the two.

And then you can use the common "fs_ftype_to_dtype()" to convert from
FT_XYZ to DT_XYZ.

Maybe I'm missing something, and the EROFS_FT_x list actually differs
from the normal FT_x list some way, but it would be good to not
introduce another case of this in normal filesystems, just as we've
been getting rid of them.

See for example commit e10892189428 ("ext2: use common file type conversion").

               Linus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
