Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D9DEEC2
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 04:23:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D421923730;
	Tue, 30 Apr 2019 02:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Gkv28X8p4zY; Tue, 30 Apr 2019 02:23:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3760C2353A;
	Tue, 30 Apr 2019 02:23:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 141031BF2A6
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 02:23:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0EF568242B
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 02:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xlxSnO0W2JNl for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 02:23:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.osadl.at (178.115.242.59.static.drei.at [178.115.242.59])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C3D782346
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 02:23:31 +0000 (UTC)
Received: by mail.osadl.at (Postfix, from userid 1001)
 id DE5905C0355; Tue, 30 Apr 2019 04:22:38 +0200 (CEST)
Date: Tue, 30 Apr 2019 04:22:38 +0200
From: Nicholas Mc Guire <der.herr@hofr.at>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH V2] staging: fieldbus: anybus-s: force endiannes annotation
Message-ID: <20190430022238.GA22593@osadl.at>
References: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
 <CAGngYiVDFL1fm2oKALXORNziX6pdcBBNtp7rSnj_FBdr6u4j5w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiVDFL1fm2oKALXORNziX6pdcBBNtp7rSnj_FBdr6u4j5w@mail.gmail.com>
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

On Mon, Apr 29, 2019 at 10:03:36AM -0400, Sven Van Asbroeck wrote:
> On Mon, Apr 29, 2019 at 2:11 AM Nicholas Mc Guire <hofrat@osadl.org> wrote:
> >
> > V2: As requested by Sven Van Asbroeck <thesven73@gmail.com> make the
> >     impact of the patch clear in the commit message.
> 
> Thank you, but did you miss my comment about creating a local variable
> instead? See:
> https://lkml.org/lkml/2019/4/28/97

Did not miss it - I just don't think that makes it any more
understandable - the __force __be16 makes it clear I believe
that this is correct, sparse does not like this though - so tell
sparse. The local variable would need to be explained as it is
functionally not necessary - therefor I find it more confusing
that using  __force here.

If that rational is wrong let me know.

thx!
hofrat

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
