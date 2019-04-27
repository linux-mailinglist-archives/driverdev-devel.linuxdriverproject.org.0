Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8437B338
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 13:18:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA92B86A45;
	Sat, 27 Apr 2019 11:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GcprXtdlfKbk; Sat, 27 Apr 2019 11:18:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9180F86864;
	Sat, 27 Apr 2019 11:18:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79F2A1BF836
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 11:18:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7619F853F8
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 11:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0bdKqbuXk67Z for <devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 11:18:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.osadl.at (178.115.242.59.static.drei.at [178.115.242.59])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7FA0D8503D
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 11:18:40 +0000 (UTC)
Received: by mail.osadl.at (Postfix, from userid 1001)
 id 46FE95C2B3F; Sat, 27 Apr 2019 13:17:48 +0200 (CEST)
Date: Sat, 27 Apr 2019 13:17:48 +0200
From: Nicholas Mc Guire <der.herr@hofr.at>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH RFC] staging: fieldbus: anybus-s: use proper type for
 wait_for_completion_timeout
Message-ID: <20190427111748.GA3157@osadl.at>
References: <1556339208-7722-1-git-send-email-hofrat@osadl.org>
 <CAGngYiXBrNu7Jrk535=L89-mOSNx-6EfqL=1EwwG49Sf44R0Vg@mail.gmail.com>
 <20190427070021.GA2290@osadl.at>
 <CAGngYiX-s6dCc5focdXW5WYaiWiBF=dzacqFjSvXggvdxD3zAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiX-s6dCc5focdXW5WYaiWiBF=dzacqFjSvXggvdxD3zAQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 27, 2019 at 03:20:54AM -0400, Sven Van Asbroeck wrote:
> On Sat, Apr 27, 2019 at 3:01 AM Nicholas Mc Guire <der.herr@hofr.at> wrote:
> > > > (some unrelated sparse warnings (cast to restricted __be16))
> > >
> > > That sounds interesting too. Could you provide more details?
> >
> > make C=1
> > drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
> > drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
> > drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
> > drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted __be16
> > drivers/staging/fieldbus/anybuss/host.c:1350:25: warning: cast to restricted
> 
> regmap_bulk_read(cd->regmap, REG_FIELDBUS_TYPE, &fieldbus_type,
i>         sizeof(fieldbus_type));
> fieldbus_type = be16_to_cpu(fieldbus_type);
> 
> Probably because the parameter to be16_to_cpu() should be __be16.
> Would you like to spin a separate patch for this too? Or shall I?

so the issue is simply that the endiannes anotatoin is missing even 
though the conversion is being done - with other words there is no code
lvel funcitonal bug here but rather sparse needs the anotation to verify
correctness and that is missing. Just want to make sure I understand
this before I try to "fix" a sparse warning.

thx!
hofrat
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
