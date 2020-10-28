Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A2929DAF0
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 00:40:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A19EA874D7;
	Wed, 28 Oct 2020 23:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4OAxrIkVWzNe; Wed, 28 Oct 2020 23:40:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEB888733D;
	Wed, 28 Oct 2020 23:40:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CEFE1BF592
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 23:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 48F3F84468
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 23:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5DZ0lS-W3AwR for <devel@linuxdriverproject.org>;
 Wed, 28 Oct 2020 23:40:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com
 [209.85.217.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 129FC8142A
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 23:40:11 +0000 (UTC)
Received: by mail-vs1-f67.google.com with SMTP id y78so533387vsy.6
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 16:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rilm3KkQy4qbZe07DwacY7gScmynSdClVXG/zAyEdxg=;
 b=cgsuOO8acL3C2dGcYG4kLDwez2H+kg/N2UpAleCqHg+AMK15+kyeyOQmnkJlDe9ANJ
 HzApt4KnSO4A2dGUBA745Niw+Kh475pFkdKzFfPLrIdXdY7514onL63FWKzsfIdm/QW0
 rnsIFSe6qaPhEyKkrVi9j3JW0Ibh8Q1k2nH4ML8oRRtEvx+6lNeGs6A8Oo9BB363IYSs
 qV2uNeoPwOB7U3HCzaYMs8t48nnWRAkMviBBmnOzpEuUCjR4nnHwmp2tmKluZi/NcJlg
 zm+fQjh9Arr/+xITQc5zNwqr9gm/LAgJPHv7IdN9InwcvIvPAmrrOT2vT1iwxrcjceuE
 fa0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rilm3KkQy4qbZe07DwacY7gScmynSdClVXG/zAyEdxg=;
 b=ohBokqp2yCTyQr7ms24xvo11MRzKYHxRm7N5fOvg+JlJTNX6i7A8ojhWwxBozGtP7O
 MJw5s5tAXFtanOt/iWJ0hGDpsoQSEhC6etc+MpHSYQSmVN2jS7vDHtqU6Al6Ld2uVQcu
 ADdnCsFjFgXhpEPKEqcXJhdSv8vpRR2P+gCcoipBT3BshvOcxClHoJrH/5pVxGov/THC
 UgLooYrIEN3CdqAa8Ap89Yw6t6aYkf7DM8dYoGAm0B6gryopef54V4z8u/P1sZvwqWVd
 ydpNudbBXYRZYepIq6xWJFk3ADhEIv//BF9MLKfxtxaHQJ7h99pzEW9CGgJdEOEYeLJE
 F5oA==
X-Gm-Message-State: AOAM530Ejdj2gG6MCAPOXr1KPH476mZiBNdL2nqV7El2UBWBo9l90Gw6
 E4dIfGEdxsfOSWOTMvoRMmKzPak3252Klh+n1Ts=
X-Google-Smtp-Source: ABdhPJy3wtNKvk8Uluq8x7fXNr0hpGqg7H5+e/DvcoBLmHhgfzGySHBlvdepxYFUs6f4idNxVC8VCoRpRD+Ue8a+ZZU=
X-Received: by 2002:a67:2ac1:: with SMTP id q184mr1252315vsq.57.1603928409963; 
 Wed, 28 Oct 2020 16:40:09 -0700 (PDT)
MIME-Version: 1.0
References: <20201027183427.25736-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20201027183427.25736-1-andriy.shevchenko@linux.intel.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Wed, 28 Oct 2020 19:39:58 -0400
Message-ID: <CAGngYiUbgkCy_ar1P4+V_=Ndx2yyOQ__MWXwDkksATsi6KUn6Q@mail.gmail.com>
Subject: Re: [PATCH v2] staging: fieldbus: Use %pM format specifier for MAC
 addresses
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
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
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andy, thank you for the patch !

On Tue, Oct 27, 2020 at 2:34 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> +       return snprintf(buf, max_size, "%pM\n", response.addr);

Judging from a few Outreachy patches that have hit my inbox, snprintf() is
considered unsafe in a sysfs_get callback. It should be replaced by
scnprintf() or even better, sysfs_emit(), which was recently introduced
to address sprintf-variant issues in sysfs callbacks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
