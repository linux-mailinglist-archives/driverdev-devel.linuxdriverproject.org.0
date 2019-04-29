Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA53E42F
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 16:03:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10C3487397;
	Mon, 29 Apr 2019 14:03:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ZFBSlzQLuft; Mon, 29 Apr 2019 14:03:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EA1C86D41;
	Mon, 29 Apr 2019 14:03:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B3891BF377
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 14:03:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0843E86D41
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 14:03:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id usaEquYznOZU for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 14:03:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C179E86D2D
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 14:03:48 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id 77so2523072otu.13
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 07:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3nbZEajYcruPzq6id7AdlLv792MCTBI+YmufYDAqZQE=;
 b=PgkptbNYlPk21zA0zOFf5tkW6rkz5xS+hwNIxvYrr0Z0FjU9YBtYNjRLq3zmG9Cd5z
 gXZGmwGEHL+kNpaS2c5SSQzkLHHM3grcE3UO/+2bIJ7ca/Hlms4PtMqUk4v60YL3NN0s
 AS69ejY0oud20d0KWzFfLTb9DxnOzHSLZvfJoOdAmkY6XUjLynMCIbD1VkzFu9vOoSLv
 cw2/fAUs7mXzWInnaaAizx4ifEk0KJOioZV6v9kCDkmWwENlI55WCUVMhHsipAXP1meT
 y3MHte2ogcR9GBDl6Be9yzZ1jsdqkG/uLz4VdciQP6d1jxFylBzJK6L3nwS47wBP9n7T
 Vsmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3nbZEajYcruPzq6id7AdlLv792MCTBI+YmufYDAqZQE=;
 b=JtooVg/PAoTm02w1UeRFH4z4fI5yK++9Ri3KtvqnCyHfakToCJjRsGwpP8bSuVZ+iH
 ZLOsh5SoYp4OWlzQMJLaYwBb+lswhS0IHpgH8I8Z6VA6uJwpP39e5+J9uRf4ya6KKBoQ
 RpldGQWxgzIDbTgEw7pZ8wNFt5ZReQHvKgsj9sn0D/Up1Z7pKkKB+9/u58dQiS5WDqm3
 w2OhXlsUfToSE6FNV9KxP+lqV8kjc4z8RRgB6Ulel5Nr4lp3DUVJZockgoQIIiNfzDea
 ad6lOwcK0xip6hBpfAN5VQYuC6uhe8uANRGjSrvYS+OYUrLuAqRLtuO9jI9AgglADP/7
 vk8g==
X-Gm-Message-State: APjAAAVx91h3FEjUL8eXxqn9K7vADuel/E8FF1Wwy1exPgyog8sqa6hc
 TWWSyw3p5qjxomvgDlXdW2K3WmR9c+a6RdeKhSM=
X-Google-Smtp-Source: APXvYqwLxHRFyKBzklDnAsk9KxDUE2OriDGQD6D1ejNY5+eJLkxalL92B5vaGXkmyDo77QB4gn9kd/Cc4AQjO8Yi84Y=
X-Received: by 2002:a9d:6318:: with SMTP id q24mr23965485otk.95.1556546627790; 
 Mon, 29 Apr 2019 07:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
In-Reply-To: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 29 Apr 2019 10:03:36 -0400
Message-ID: <CAGngYiVDFL1fm2oKALXORNziX6pdcBBNtp7rSnj_FBdr6u4j5w@mail.gmail.com>
Subject: Re: [PATCH V2] staging: fieldbus: anybus-s: force endiannes annotation
To: Nicholas Mc Guire <hofrat@osadl.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 29, 2019 at 2:11 AM Nicholas Mc Guire <hofrat@osadl.org> wrote:
>
> V2: As requested by Sven Van Asbroeck <thesven73@gmail.com> make the
>     impact of the patch clear in the commit message.

Thank you, but did you miss my comment about creating a local variable
instead? See:
https://lkml.org/lkml/2019/4/28/97
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
