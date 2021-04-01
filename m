Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E73B3512EE
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 12:00:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF11C40540;
	Thu,  1 Apr 2021 10:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pSWoANiQJAJL; Thu,  1 Apr 2021 10:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CEB504053B;
	Thu,  1 Apr 2021 10:00:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA9961BF239
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 10:00:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 987BF40FB2
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 10:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4AVMm2E5l-PA for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 10:00:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36B8940F94
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 10:00:40 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id e7so1257406edu.10
 for <devel@driverdev.osuosl.org>; Thu, 01 Apr 2021 03:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dAMcIYZQsWcLNDtTVmIuYET3cf4HAVlQE3VpsQIkNFk=;
 b=K+JVGvthsrNFu3mE27IZDp1ESdXD/DH8MV7fVfp0PrJRvTaQPDlS7Mx2JPSiYc/eVb
 IMiERYEuPH10MeER5t3ZIlAP5s3GiqAsco5xGXPHwH2Iaa4o1zaWXaFdBJyka0Qx0GP6
 RJ6hKulxjcqO5zQRIOaUiBey0u4YWlW+7YwIpZRRj8jj2yZfBBRuMLs/yekuO/wlvn+Z
 oPQA4F/+XWiRuzXrUyUEKOu6ZkqMS60ZALR/DB2WQC/BMlwr/AC9ingCl+4J6z7dYelN
 IgFgfLUYAmG34lpJfoN0bUwvoUW0LJP7R76ICpfh+J8NKWfAgVtbIG2jtPGND8wPOTkw
 NvQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dAMcIYZQsWcLNDtTVmIuYET3cf4HAVlQE3VpsQIkNFk=;
 b=ApvTWYzmVLk8JBzOUY4IgkehLJ/f/COQQepzKGcqHiZo0A5YFgoUgiFI8Ats/AUqB7
 3XMsywh93m0oVCtHDtCbXrXORYK6eMGsIEMC733TQb8/UIkR0qlE5DWHprH2dm13FaGw
 VN98jys1paeCEpOC21kJsjafgp2s92xOLlAmZs2nJL8grQ48XURWpd3FrM1JZL9zGbiT
 32uhC609sq4F8WnPX1FdhPU+A/p/AeHCf3uF4TzUubEun09csg2C2DLfAMu0C9++Lzwf
 Nx93Mzj1gbruP0yN9rJm2gvWaLmEW1BpDC9dBTeN1Uvsf8HupA3zTT9hyCnwoZnVPZHn
 834Q==
X-Gm-Message-State: AOAM532svnwv8J44fvBF5d9KPXGD7/JsfVRSOq1+Xik9hEL5dxMxypqD
 tYS1wbbxyZWt0fsLKEcavSmPYQOUdrQL4bT3A73O
X-Google-Smtp-Source: ABdhPJx+A7HSBREZzbKfoV5/V2Ydyp7kDa8oOncSc6SF+/vwx9FyveUcECoT66xXAwNgEH1ZBs77kIiOwQS9fCCP/MA=
X-Received: by 2002:a05:6402:6ca:: with SMTP id
 n10mr8941753edy.312.1617271239083; 
 Thu, 01 Apr 2021 03:00:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <YGWYDog+YhgeD1mS@kroah.com>
In-Reply-To: <YGWYDog+YhgeD1mS@kroah.com>
From: Yongji Xie <xieyongji@bytedance.com>
Date: Thu, 1 Apr 2021 18:00:28 +0800
Message-ID: <CACycT3vK_99-AVCf_U7AACGif90xPWxvAo94-tU-LKYh0r9A3g@mail.gmail.com>
Subject: Re: Re: [PATCH 0/2] Export receive_fd() to modules and do some
 cleanups
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com,
 Kees Cook <keescook@chromium.org>, Suren Baghdasaryan <surenb@google.com>,
 Jason Wang <jasowang@redhat.com>, Sargun Dhillon <sargun@sargun.me>,
 Christoph Hellwig <hch@infradead.org>, Hridya Valsaraju <hridya@google.com>,
 arve@android.com, viro@zeniv.linux.org.uk, joel@joelfernandes.org,
 linux-fsdevel@vger.kernel.org,
 Christian Brauner <christian.brauner@ubuntu.com>, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 1, 2021 at 5:53 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Apr 01, 2021 at 05:09:30PM +0800, Xie Yongji wrote:
> > This series starts from Christian's comments on the series[1].
> > We'd like to export receive_fd() which can not only be used by
> > our module in the series[1] but also allow further cleanups
> > like patch 2 does.
>
> But binder can not be a module, so why do you need this?
>

Oh, right. I miss it.

Thanks,
Yongji
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
