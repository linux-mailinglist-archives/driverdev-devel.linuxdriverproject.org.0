Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F06FF220519
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 08:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 860AF87F73;
	Wed, 15 Jul 2020 06:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aT-r58Haj4o1; Wed, 15 Jul 2020 06:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9925687F5C;
	Wed, 15 Jul 2020 06:36:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74AF91BF852
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 06:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 70CC089422
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 06:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZyDfnIR-rWpb for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 06:36:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9042889350
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 06:36:43 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id w3so4322081wmi.4
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 23:36:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7/7YlCQQS4NfdI2cjoTLRwj8KZpvs8wrGSrY0FMkPh0=;
 b=TeVELv+KmoxPJevNCTR8BPne7w190xeMIfeawVMmUSHJWIXc4Y+hS+92ZkD6MiBkDw
 2OZtoxN7J7P24qDDmKNGQiIHaZ8q+vtmFfofjNTTCJl96p8EVaHKj88m0gwFeBEjk1qn
 aBm2iyeUPhmBiMeo5fGRqw15pIjSIB6hMHRcU6pYIYhVd5W96a09BJlLkJm0OeqI3b0z
 pq6PvkemCEK7Z805SCs8aofdIpYUs1ggMU2D1qrynulYwgBLj3shiYKQr/i1H1mSGBVM
 UUXS2xptvuBVl+FvFtC3j6jMn2UEb1mM/JJrnnO1IfJftGkK7Z2aNfxMSK5/sjZIwFG8
 Zsvg==
X-Gm-Message-State: AOAM530CBOg1TfeTII0PwR/Y3wu7U+l/HOBSvBO1Q9/qS0otGrx8jAW/
 mpBmZh194OS7dYosI6y1q3M=
X-Google-Smtp-Source: ABdhPJzhsPV6nJJtiemGrmFxaPyOMI93M1GFQlk9i6/jxMDh1l1C4XRZG2kXT5m6ORa3FiYsr6xBRg==
X-Received: by 2002:a7b:cf18:: with SMTP id l24mr7024055wmg.116.1594795001964; 
 Tue, 14 Jul 2020 23:36:41 -0700 (PDT)
Received: from localhost (ip-37-188-169-187.eurotel.cz. [37.188.169.187])
 by smtp.gmail.com with ESMTPSA id u16sm1896668wmn.11.2020.07.14.23.36.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2020 23:36:41 -0700 (PDT)
Date: Wed, 15 Jul 2020 08:36:39 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Subject: Re: possible deadlock in shmem_fallocate (4)
Message-ID: <20200715063639.GA5451@dhcp22.suse.cz>
References: <0000000000000b5f9d059aa2037f@google.com>
 <20200714033252.8748-1-hdanton@sina.com>
 <20200714053205.15240-1-hdanton@sina.com>
 <20200714140859.15156-1-hdanton@sina.com>
 <20200714141815.GP24642@dhcp22.suse.cz>
 <CAHRSSEzbCW3E0QTR0ryf3p=5J5uhs_vY2D6fFQEzP=HeCDkPGQ@mail.gmail.com>
 <CAJuCfpExhJJO_xPk663-eUkmAXVVwNDd9a7ahQuwMW8JVMBJpg@mail.gmail.com>
 <CAJuCfpFz9kEfTPxcausVj63mUvU7i6Dvv6=KNePVX2qR+-Ci2A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJuCfpFz9kEfTPxcausVj63mUvU7i6Dvv6=KNePVX2qR+-Ci2A@mail.gmail.com>
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
 Hillf Danton <hdanton@sina.com>, Todd Kjos <tkjos@android.com>,
 Linux-MM <linux-mm@kvack.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hugh Dickins <hughd@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Eric Biggers <ebiggers@kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Markus Elfring <Markus.Elfring@web.de>,
 syzbot <syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue 14-07-20 10:32:20, Suren Baghdasaryan wrote:
[...]
> I'm not sure how we can annotate the fact that the inode_lock in
> generic_file_write_iter and in shmem_fallocate always operate on
> different inodes. Ideas?

I believe that the standard way is to use lockdep_set_class on your
backing inode. But asking lockdep experts would be better than relying
on my vague recollection

-- 
Michal Hocko
SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
