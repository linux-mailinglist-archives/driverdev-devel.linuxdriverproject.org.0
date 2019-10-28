Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E73E7398
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 15:27:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6F8B9204B6;
	Mon, 28 Oct 2019 14:27:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NrPVTzcGCsPb; Mon, 28 Oct 2019 14:27:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2B2742049C;
	Mon, 28 Oct 2019 14:27:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D36161BF40D
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 14:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE66884EE2
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 14:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LAVYsll78OV4 for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 14:27:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D22E284ECD
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 14:27:16 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id 53so6782635otv.4
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 07:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qRPcGUyjyYP3X+dNbFskpOrzjRKBib41L5MZ+6/IumQ=;
 b=dmV0D1FpdEoza5dLoPFkgv/FDQhs15CmGwpEPlAT0j2u3NQ2wpQzX8doVJJvQLp8JI
 Sfyln9GCLLrHiTDMC9FFAPtoCYXUkkrn8fg3vnkP0F4aygf3f7NO3lu8Np3KBwwjX0yZ
 pJc7k0q8BWbyZAOWshLqcmfonZjCgHkNKErJnqANJ2AVg7gmRmWRvkqxo90KRjbJ8Dai
 qvQZARVLSIAcnLYvMtXDOSAMNGQv/X31yNvWqRGx52VSt53OGmAo6QV2VHFtVEuRZNp6
 ulx6antxyR/+qm+LVSywVNCb06FB76QI/zVpjXVy5PTJwIo8185g2OOeqJm95/BKsGD6
 2F5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qRPcGUyjyYP3X+dNbFskpOrzjRKBib41L5MZ+6/IumQ=;
 b=Qv7CUJUg15VopW7lgk5zUIf6VjX11G6if47Ihtf49aGpF1EG2H8mWieq+9BrIL0lQ5
 3F52y6lWwj1Kpm+ZGCmMbRS95r7zpT8ScbQMsgvE6AtvETQG2JWers8tSuPNvJUTZcr3
 7xVneZ3onFjbWLZAWWwZKVrA1UkM4Q3URJUPqGUlyKMRjPe8EUbsluhoHRWq2kwMKVuw
 Z03lGGYL0bzLdBeu7nZw8ADMlEXsdsJ+jD9gDWl3GUMlgK61HFukZEx0q90pQAT6mR/Y
 EXcJaUw114657WqeVZOzq6PVmKHIthAKdgdMaVKsq5ye4LCnPsFeYgp22UI1eemqLZiv
 W19g==
X-Gm-Message-State: APjAAAXkKDdwnGSBqNlbZtRbjAzb08f17VHSGcZqw2b4+/3/QpY8nnaj
 DR9WUBlGbyhEZCV0CFyeDFSbiyrTVGeqA7MYFcI=
X-Google-Smtp-Source: APXvYqxIXLVM6e9Cd0PvKo8U2jwBqn1fDpadkb/s3M2zNmRTxnE/C0zaL4Y6+XA3oqXRyIcYfyzQxHt1ooMsBJciHlQ=
X-Received: by 2002:a05:6830:237d:: with SMTP id
 r29mr8845480oth.0.1572272835772; 
 Mon, 28 Oct 2019 07:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191026235214.GA11702@cristiane-Inspiron-5420>
In-Reply-To: <20191026235214.GA11702@cristiane-Inspiron-5420>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 28 Oct 2019 10:27:04 -0400
Message-ID: <CAGngYiV0hCjXigVhijoTmwMfS4mM+hC-aVFsu6VDT-WmKsNsJQ@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: use
 devm_platform_ioremap_resource helper
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 26, 2019 at 7:52 PM Cristiane Naves
<cristianenavescardoso09@gmail.com> wrote:
>
> Use devm_platform_ioremap_resource helper which wraps
> platform_get_resource() and devm_ioremap_resource() together. Issue
> found by coccicheck.
>
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>

This is a duplicate of:
https://www.spinics.net/lists/linux-driver-devel/msg129526.html
and
https://lore.kernel.org/patchwork/patch/1140024/

When you find an issue, please search the mailing list(s) first to check
if it is being discussed already.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
