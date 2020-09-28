Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 499AC27B78D
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 01:13:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FD4585C4B;
	Mon, 28 Sep 2020 23:13:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8eYRr1zs3FlP; Mon, 28 Sep 2020 23:13:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F28D285184;
	Mon, 28 Sep 2020 23:13:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B83CA1BF340
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 23:13:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A8E3685CE1
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 23:13:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RDU-mnpEAqOp for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 23:13:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5B15785BBA
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 23:13:09 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id x22so2616218pfo.12
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 16:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NftyTi1bwuaE14e4XfgcQF93EOxKUsMOEEQqaDTCXJ4=;
 b=gb3PRHELtfh8s0n7btbKHS7gdHecLDH27/WSx/dTaEZqzwAyfLHcApZT5c+IqoShdm
 0LEtidHDj3nYkCuzJeB2PL+jPZX/ntrn70g8bHDhQFR+CUPr0IDYs3hxi4tZpkrlg6d9
 hrDzPZTP54zHmpmIZZBNppWuJmHgMncA/mXvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NftyTi1bwuaE14e4XfgcQF93EOxKUsMOEEQqaDTCXJ4=;
 b=VJR60jGljGS6aPbG/e5o1CvSB6Q6S8retaG9jLLL9Phfiua2p47IFwiTY9LjYNqDgT
 N6QLrcs3uGko4rrIlQdfe1WGlJl8WNffRaEXtfZ/Mw4lxy+jHJ0D/8aNMhkJA3kuO5qJ
 FIg4pL2XUcsM/UXkWlzfrGfjg1OvWrhevJ6unf+ipGMt+wH8AC4R5KeAd6/tNHzsy3KG
 EY+XhgvPBYFFehafa8ZJ6qj9BLL5aQFh8lY+LqA+VJ8ThgDX/l1rHoBrbGa6X/2X/C+N
 KndGYXcHM/EEfIV2rNhZXEgrYrKqeYF7Ebq93nKI5IyECfx4PqbXzBMhvwZzHYzAYMy6
 ML+g==
X-Gm-Message-State: AOAM530fkWpAiPGnvdvOU9cbZ5No+zeEBVUWagS3U3c4pnqfwqaQyD2z
 W3QiPAx4ir5XWTdY6JOdxhFQRA==
X-Google-Smtp-Source: ABdhPJwQDKOxa8hqpizwqXPcIZmf1ybA5/FNT7GiN+5miNLUE3lYvrdUP8suk6yqrm6piIZGkrVe3g==
X-Received: by 2002:a65:494e:: with SMTP id q14mr1006851pgs.281.1601334788954; 
 Mon, 28 Sep 2020 16:13:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z23sm2835217pfj.177.2020.09.28.16.13.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 16:13:08 -0700 (PDT)
Date: Mon, 28 Sep 2020 16:13:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH 00/11] Introduce Simple atomic and non-atomic counters
Message-ID: <202009281612.EDC1C0078@keescook>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <202009260923.9A2606CFF6@keescook>
 <3929a023-eb7a-509c-50e1-ee72dca05191@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3929a023-eb7a-509c-50e1-ee72dca05191@linuxfoundation.org>
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, joel@joelfernandes.org,
 rric@kernel.org, shuah@kernel.org, devel@driverdev.osuosl.org, minyard@acm.org,
 corbet@lwn.net, surenb@google.com, linux-doc@vger.kernel.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, tkjos@android.com, arnd@arndb.de,
 bp@alien8.de, openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 maco@android.com, christian@brauner.io, linux-edac@vger.kernel.org,
 tony.luck@intel.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 arve@android.com, james.morse@arm.com, hridya@google.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 28, 2020 at 04:41:47PM -0600, Shuah Khan wrote:
> On 9/26/20 10:29 AM, Kees Cook wrote:
> > On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
> > >     7. Verified that the test module compiles in kunit env. and test
> > >        module can be loaded to run the test.
> > 
> > I meant write it using KUnit interfaces (e.g. KUNIT_EXPECT*(),
> > kunit_test_suite(), etc):
> > https://www.kernel.org/doc/html/latest/dev-tools/kunit/
> > 
> > Though I see the docs are still not updated[1] to reflect the Kconfig
> > (CONFIG_foo_KUNIT_TEST) and file naming conventions (foo_kunit.c).
> > 
> 
> I would like to be able to run this test outside Kunit env., hence the
> choice to go with a module and kselftest script. It makes it easier to
> test as part of my workflow as opposed to doing a kunit and build and
> running it that way.

It does -- you just load it normally like before and it prints out
everything just fine. This is how I use the lib/test_user_copy.c and
lib/test_overflow.c before/after their conversions.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
