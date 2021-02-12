Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD45319B14
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 09:17:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B221C874F7;
	Fri, 12 Feb 2021 08:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GELJNVfySSqy; Fri, 12 Feb 2021 08:17:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E7328743D;
	Fri, 12 Feb 2021 08:17:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B87C21BF3F6
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B025987450
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:17:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0n3E6SREoHSD
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:17:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B3208743D
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:17:13 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id d2so39068pjs.4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 00:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=egXrthJImNUxIC6zqIS4jRU+/D0rG/8Im//Z+CJZHg8=;
 b=W1957gwnnueUJLnezCsvJBokvEbRHoFm7S08tIM0J1oKV/6yfaPR98nwfRIjaqYvAc
 RzaCnb/hlAADaRRqAN39itj4G9LwL5sHGPv6C/JFpDMHADzaXPR5ne8jzHvzkVXCPVvD
 kAnFb8aIkAmiuozUmbRiK501DqjJKHbQWCS4ufWfy7g2srUim6MjYJwbPx/k2BrYVEMJ
 DVrO+TZHU/YewkE8mivv52bScGSzP0VZzppgjzo1rqn8NCyXOcpMTr+QyySEUaTPhmO5
 H2+ryLvngzGHoUPLbmsPy3rgYZsbkSUcZQORf2Q0u+n+4YoPTFmHAIccO7XvL0536gGx
 nm1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=egXrthJImNUxIC6zqIS4jRU+/D0rG/8Im//Z+CJZHg8=;
 b=S5nNKQe9Srf3sU4K44QADX4bjTKy8kLYV3YWfwUlvucU/NzQnSkT118n1g2s3V0RLL
 zyiHFi7c3I5zaizn0J3QRkV6UtZDmmjw6aHmRrf2b1MPxH8nAhPwKwMfeCK0AEHugvbl
 I8SnWsubGGcMTlS7R+jM+MCQKgaTFgQa7NEP+HsqmxbQNpQ5pPnsTlKiAE3fqVJ4zv8X
 RyMi/mGvgzhxuRC5qNjBz8B5CzIuMJKNxYZOrF8ZDL6Zou0c8pPM92CwvdiOeJKovq1V
 GfkvlFfEEITPCrYcsZ6VVsYcotPO43SGZDWPQapLem0MyVjJh5upYk8T5TcCrp0oISO2
 8sbw==
X-Gm-Message-State: AOAM531bAosmmliXVoR0UEtiBpj2rsY1jQn/zLZP+vjhNi5og+v3FTxf
 FCnb+1VEWudDY9b9RnVBYV+MYl4KXCdKcHeJggU=
X-Google-Smtp-Source: ABdhPJzUw3HQsWYQ5GssX8uWttq2tjrpdqddvBL+/qWVoZmobCmf3q62Hc3QnDuqc2erksszwiEIPRG1wakNV0z+3bY=
X-Received: by 2002:a17:90b:4905:: with SMTP id
 kr5mr1707002pjb.135.1613117832828; 
 Fri, 12 Feb 2021 00:17:12 -0800 (PST)
MIME-Version: 1.0
References: <20210212075845.14180-1-oroz3x@gmail.com>
In-Reply-To: <20210212075845.14180-1-oroz3x@gmail.com>
From: Frans Klaver <fransklaver@gmail.com>
Date: Fri, 12 Feb 2021 09:17:01 +0100
Message-ID: <CAH6sp9MmsJNkqMjtHbe59o8P8JMA9pSsxEo6VQAMNRNGsLT+4w@mail.gmail.com>
Subject: Re: [PATCH] ks7010: removed checkpatch.pl format errors
To: shivang upadhyay <oroz3x@gmail.com>
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Fri, Feb 12, 2021 at 8:59 AM shivang upadhyay <oroz3x@gmail.com> wrote:
>
> Signed-off-by: shivang upadhyay <oroz3x@gmail.com>

There's no description here. Even though this seems like a trivial
patch, it should still be there. Your commit message would look
something like

    ks7010: enclose non-trivial defines in parentheses

    Checkpatch complains that parentheses are missing:
    <quote the checkpatch warning or something>
    Fix that.

Also, if you're sending new versions of your patch, make sure to
include the patch version in your subject:

    [PATCH v3] ks7010: enclose non-trivial defines in parentheses

You can use the '--reroll-count=N' option from git-format-patch to
automate that.

Good luck on your next roll,
Frans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
