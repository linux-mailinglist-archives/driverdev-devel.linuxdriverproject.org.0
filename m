Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E165B6DB8
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 22:31:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71A9886777;
	Wed, 18 Sep 2019 20:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rxES53KWn4YC; Wed, 18 Sep 2019 20:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C6308682A;
	Wed, 18 Sep 2019 20:31:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D56AC1BF311
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D267A21FAD
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gFMGywK4EQam for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 20:31:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 089991FD7D
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 20:31:34 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id z14so702616vsz.13
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 13:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k00cJxJVOrZHQZWIDnw9OPdlixcLBPMnLm2wjYYctZQ=;
 b=cvAyWueZzWSZSju5V7PXoSzoAOQ2+3Fdjnf3enoHLDk42j68+thtOVj7z2AEWxKfC7
 ++GH+cn+GG2nsZUmIgCdzBC+azyFg53Bh3O0I0VFVEd1fVpsZVm1otzzw86XCAUz4K1r
 rh8q6GjnZjAfKoLZLXV4Tup4A2JmM8gU0BBVxoWEATzoEC6JuFAHVJ2guHEk6+rfhNsu
 PqSbSYATke0WCSM4parfRcIGWQzb+UVD1xmE8nU9LPmzVo6IHpypSnW8FYZMOkc+Z1cZ
 L9uM9BrVzMhLC0Q/0W9tZtIzw+3i8mV7o2ZBnmM1fYY+tc91K2pZsxFEXqTU5ouYMWj9
 2IKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k00cJxJVOrZHQZWIDnw9OPdlixcLBPMnLm2wjYYctZQ=;
 b=CESu60rwjQuB41GIpJanR2GwQlb9uFb2fN9V42xkwgIxHMa+oZwxpUQ6DNMNZiKukk
 4auGvRgKHvTL1oxEg8TxvPGdUMx+/ts88xMbTbhzn6YAmdoWTv9CFKLe2TSNngRFXZbt
 dGDBEyFxdfpXCc+EesPUIDPZOCC5k9oxFMdjeckdcGlQ3U3quFciNu/IETHgLjU8rqXz
 zR0eP8gQw8tP2PfwPGzjhylDjW02uLU4bdNeQfRond5OsgeBor8doh+/1jyYRmWr1wcq
 //lHFMwBJEEXifn3DdniYqsSOrAZ0onIXQgZkYCOVxJAdxe0aQnlLg3RQesApgYtqz/+
 KcVw==
X-Gm-Message-State: APjAAAWGUV/zbSXYHadrW43Py+AyktpfIoE/umwy5swhHjxDFtduDa5e
 u54XXGg9O/xz8F9EAatEw2TlIBqsVBCwNtt1M/k=
X-Google-Smtp-Source: APXvYqw0/NfTdkYtF/83p7/m4C+2xB93JAFy/AQRs14cASEOg3z6U9/VjIuYDTba7nMYHih72p7t5LuzG3fRVAKYro8=
X-Received: by 2002:a67:7087:: with SMTP id l129mr3517858vsc.83.1568838692756; 
 Wed, 18 Sep 2019 13:31:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190918195920.25210-1-qkrwngud825@gmail.com>
 <20190918201318.GB2025570@kroah.com>
 <CAD14+f0YeAPxmLbxB5gpJbNyjE1YiDyicBXeodwKN4Wvm_qJwA@mail.gmail.com>
 <20190918202629.GA2026850@kroah.com>
In-Reply-To: <20190918202629.GA2026850@kroah.com>
From: Ju Hyung Park <qkrwngud825@gmail.com>
Date: Thu, 19 Sep 2019 05:31:21 +0900
Message-ID: <CAD14+f1yP7qps9mpF1T9Xf7E5Osthzj7tH35VcWPr3TmxdkMTQ@mail.gmail.com>
Subject: Re: [PATCH] staging: exfat: rebase to sdFAT v2.2.0
To: Greg KH <gregkh@linuxfoundation.org>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Namjae Jeon <namjae.jeon@samsung.com>, linux-kernel@vger.kernel.org,
 alexander.levin@microsoft.com, sergey.senozhatsky@gmail.com,
 linux-fsdevel@vger.kernel.org, sj1557.seo@samsung.com,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 19, 2019 at 5:26 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> That differs from the original exfat code, so something is odd here.  I
> need some sort of clarification from Samsung as to when they changed the
> license in order to be able to relicense these files.

We should probably ask Valdis on what happened there.

Even the old exFAT v1.2.24 from Galaxy S7 is using "either version 2
of the License, or (at your option) any later version".
You can go check it yourself by searching "G930F" from
http://opensource.samsung.com.

I'm guessing he probably used "GPL-2.0" during his clean-up.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
