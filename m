Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C73828B76
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 22:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 002C388ACF;
	Thu, 23 May 2019 20:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pWrFELKv+R4E; Thu, 23 May 2019 20:23:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 82785885A4;
	Thu, 23 May 2019 20:23:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DD2AF1BF3FD
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 20:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D9E9287EB1
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 20:23:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qvrsRXox8Y0t for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 20:23:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 316DD87EAE
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 20:23:25 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id c3so6662924otr.3
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 13:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FW8ptGotkgtXFOQxEyNpjt0JP8BqcY4khRdBUzxGD9E=;
 b=njOq4WeSNJyHnSOnmQL4N4uTQMpHBzAatUAD+oVavwq6rVacXvEtD5vUhxBlBcF6jf
 +ih8vX49NwzraKpbDoGMeHatPdCEgN6gHPZurpnc4tl2Yznz+2D4D3ttCu8ZoSZfwAjf
 K13T88nBIUqFUe4JmKgngV2cOh3bEigXTXafE3a+FNNIl9M8pphoavj7i0ipuPg6dziF
 NyWQNAqz5ZdkRJEuyJiO2OZBBVWSahiduSIUWAyu49JG6rCxWRkh6VdVhXD+i5U/MEb5
 /IZfP+QFUGnjxajsWA3n2djzSpGmvEZ7TXJSlSdKT/ZsIBSo/KgDZBC8Ypl6qZXS263k
 mcog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FW8ptGotkgtXFOQxEyNpjt0JP8BqcY4khRdBUzxGD9E=;
 b=KaBgkLmeHkgNX4TjucUpjJ/ioAej/sYax06d5QTtsdQbyFJ3aLg0uFUFAKE1smjQJM
 NmrN7EBOd8a/gHgpr0+3IfUOdRq1ZwA0J2z5zk6XaOlKVjRbg3dXv4lEcbnToi7qhbcG
 AuNlNhFMb9s6U6fIYYEUmiDRYkx4QJ6/72onfs78USExkb63l7dVeUmBuLN29GnvO4+r
 Bx7l2ftK115l5PKNpAr4XepGocejhjHOCRsqv9I7SNinZv+LuyfrV55u3hGUJ+YhQl7u
 u9qNxN8BPUcNe8MwDXyMxL6PjALcJLgZCe/V6uWSHvydxkDrSMunPotQpP4Xn8m8fuk6
 UNMw==
X-Gm-Message-State: APjAAAXtV6N5bPKwR1KcqgvTYeoQ+z48+Ce/VZ6C+p1JvLs8dazzOPuR
 o80B2VixTLVfwqBv/8uh319Jh/PRS8Stqv55MIQ=
X-Google-Smtp-Source: APXvYqwY4bYDr21ELI4yNLq57yMgWWRbeW0ntvJPrTjtaZLQ/U4ieoP23hDhanEefvTDKe7MynPZ+3Gh+sCZlqOZ/Sc=
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr8582241oto.224.1558643004192; 
 Thu, 23 May 2019 13:23:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190523195313.31008-1-TheSven73@gmail.com>
 <1b741b25b973e049948b3e490c13aad48716d5b0.camel@perches.com>
In-Reply-To: <1b741b25b973e049948b3e490c13aad48716d5b0.camel@perches.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Thu, 23 May 2019 16:23:13 -0400
Message-ID: <CAGngYiUnRSSPLDhXeAg5E0pM_-ZbNV9qpOarSemDdpwLPRZeqA@mail.gmail.com>
Subject: Re: [PATCH 1/2] MAINTAINERS: Add entry for fieldbus subsystem
To: Joe Perches <joe@perches.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 4:00 PM Joe Perches <joe@perches.com> wrote:
> patch 2/2 specifically covers the anybuss directory,
> but the Documentation directory has no matching pattern.

Thank you for spotting that, I will re-spin the set.

>
> trivia: anybuss looks like a misspelling.
> It might be better as anybus-s.
>

This came up as well during the review process. When we insert a separator,
the include files start looking like anybus-s-controller.h, and the structs
become like struct anybus_s_ops. It then no longer looks like a misspelling,
but becomes harder to read?

An alternative solution is to get rid of the 's' suffix altogether. Anybus-S
is the only flavour we support right now. Although that may obviously
change in the future.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
