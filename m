Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1DF318854
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 11:40:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4F2786DA1;
	Thu, 11 Feb 2021 10:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DVZh7_n6MMSE; Thu, 11 Feb 2021 10:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AC8A86D6F;
	Thu, 11 Feb 2021 10:39:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26B441BF4D5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 22E9C86D6F
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 10:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sCyItNJLFKtG for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 10:39:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17E5C86D4D
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 10:39:54 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id b9so9245203ejy.12
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:39:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fEHaEqfkX/bCOFj6WvJkc8sOHle2pKOr8Ss2R/h0+rg=;
 b=akngWtwOZKWizpmcfOArR3EOF403SODjfgiuGuUwhQg7ZodI3cxxz6yC/dOl47t57Y
 18IUc0xrAkPWyp05+RvYPrVMTLS/R3PQrgA4eR1mFMuUGEEZJwC7m5NBoLqrTtTIfkRQ
 Aa1Uq/yC6KY+KMJ8sSHJB+Q8s4hhQ2i7IanHhh2B9FegiZHpwNxzoktlWUfIhZn0BTQk
 ToBb/DMBA1Oq/SB/isMc/Cx24W6WnHad7OWRl8Lm9ztoJZB8dOLnIiHeyilUctBJfgQM
 cQhUSglQagggkFtaQLLpAzHKDDGRvkZMuTj4v07w4TLX4fhvAJjQaBRX++R7P+Q2JgKq
 /z7A==
X-Gm-Message-State: AOAM531gX8iMCIo+UAbsDpCUHKB/yU7JHywqEn10ABobZsNW8U8U0aA5
 WhC6wxV2JK0G1hePYB0HAMhqR9eZ4QWTrA==
X-Google-Smtp-Source: ABdhPJzMyLdaPTW/Zt61mQP6pVi4PPYL6j/f3cELstXEGyntgY0PvevNUyTqy7tyq8+pr9nXdcUQNA==
X-Received: by 2002:a17:906:c444:: with SMTP id
 ck4mr8129434ejb.156.1613039992443; 
 Thu, 11 Feb 2021 02:39:52 -0800 (PST)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com.
 [209.85.208.43])
 by smtp.gmail.com with ESMTPSA id cn18sm3485990edb.66.2021.02.11.02.39.51
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Feb 2021 02:39:51 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id z22so6403644edb.9
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 02:39:51 -0800 (PST)
X-Received: by 2002:a05:6402:104e:: with SMTP id
 e14mr7915504edu.316.1613039991789; 
 Thu, 11 Feb 2021 02:39:51 -0800 (PST)
MIME-Version: 1.0
References: <YCQvl3+KviQNh2JI@karthik-strix-linux.karthek.com>
 <YCQxeMVM92dtfEpO@karthik-strix-linux.karthek.com>
 <YCUBEMUyvRcQkFF7@kroah.com>
In-Reply-To: <YCUBEMUyvRcQkFF7@kroah.com>
From: karthek <mail@karthek.com>
Date: Thu, 11 Feb 2021 16:09:39 +0530
X-Gmail-Original-Message-ID: <CAJ5zXr0KkBy207yFx=hSWWqwduJDE=TydqWTjF0FFfyM0OvtrA@mail.gmail.com>
Message-ID: <CAJ5zXr0KkBy207yFx=hSWWqwduJDE=TydqWTjF0FFfyM0OvtrA@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix function comments to follow
 kernel-doc
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sorry

On Thu, Feb 11, 2021 at 3:34 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Feb 11, 2021 at 12:48:16AM +0530, karthek wrote:
> > check this out
>
> Why ask us again when you already sent a patch?  Do you see any other
> developers doing that on the mailing lists?
>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
