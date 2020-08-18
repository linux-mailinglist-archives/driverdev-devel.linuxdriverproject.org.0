Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC0F248248
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 11:52:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A5158756C;
	Tue, 18 Aug 2020 09:52:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U8BSD+DPjUvQ; Tue, 18 Aug 2020 09:52:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A0C1873CE;
	Tue, 18 Aug 2020 09:52:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FA4C1BF4D5
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 09:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 419AF2010D
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 09:52:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bpVj4mUNgafM for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 09:52:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 5ADC020381
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 09:52:44 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id r2so17653542wrs.8
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 02:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ipDKz5g1D0S+2ZDMowsxv3Wi3vQOCFMnWF8JkRRYICk=;
 b=jvwfVyfhN8w0TONtswrK+GiKQsmHt/iWEMCMOsUaFciLd9R2O69kCnn4TvpKendjen
 Motfa/oPNNXmJjVtbbGXmFdmnUy0TGznc7NiNnz2KRzH43UDkXWqYxb04YqYm7kqah9p
 k5DF0erG3ZmlwRBdCtpVUCR57/ifOBiAwdr2gQNJzAyE6zgfvpYAfPgy1NvQDNl3RDzC
 ZgkTqr/N/AGE0E28mFhteMTqzXEJNQ478wB4xFoZeTjw0SsnhkAQGw8kCJfY28A7vfcg
 Gyk/k6b1CA81mBcj8v1wZ6G+Tgxn77frmfiPs5nRxPG3gXUlsG/3aIFkhoJ5auz/nXqu
 klyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ipDKz5g1D0S+2ZDMowsxv3Wi3vQOCFMnWF8JkRRYICk=;
 b=GOcWsv67C/4CUrY53zeUZLrcDdpd/soms+jUes7lFLhP+1cJwBnO9Yxnrq1zBBq+DE
 51HT5afXEkZZ3J5BoJxy3GDcwDsTdPBHc0YwGCmQNm0itArWBRYruBGfUHfpJqbnvOXQ
 dwbGalDrEILPcdhDnCEAT0rQl4g1sP6EpDmuq8LtZCM0OZ2oFpBQfRjGltzoueNhqrc9
 SmOCP5x6Rye2c8es7FPsYcKpwsrss1OHpt8JKSbscvD9kTrd6WsKpd87l2wjGYCjQrdN
 er3Iche2tdQyamzP7yQItIToAD+XkBfQtvy8paBv3RCsIfHZGvdbsanz6NIeUgaTCHGK
 YauA==
X-Gm-Message-State: AOAM530heqt5giNy66aoRdGj3RX3+Ugka6ApwvFq8lZkwX5AeVE2OB4c
 bweWhfRb4/5xeQMjXeHopd8=
X-Google-Smtp-Source: ABdhPJxo82TEyMKUpw1MRRmNpYVm5KU0966dG/z9nADSZn2Aph3kAPhN4BhoFSrPfEp3Qg0paUYCeg==
X-Received: by 2002:adf:9e8d:: with SMTP id a13mr18529022wrf.94.1597744362803; 
 Tue, 18 Aug 2020 02:52:42 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id v16sm32302023wmj.14.2020.08.18.02.52.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 02:52:42 -0700 (PDT)
Date: Tue, 18 Aug 2020 12:52:35 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 0/4] *** SUBJECT HERE ***
Message-ID: <20200818095235.GA354542@tsnow>
References: <cover.1597742228.git.tomersamara98@gmail.com>
 <20200818095035.GA56916@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200818095035.GA56916@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 18, 2020 at 11:50:35AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Aug 18, 2020 at 12:17:08PM +0300, Tomer Samara wrote:
> > *** BLURB HERE ***
> 
> Really?
> 
> And your subject line could use some work too :(
>

sorry for that, i've made a script for sending patchset and accidently 
it sents mails without contorl.
Fixed that
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
