Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6781636FF41
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Apr 2021 19:13:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E433B848CE;
	Fri, 30 Apr 2021 17:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YZy1xNu0gVGO; Fri, 30 Apr 2021 17:12:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4421484819;
	Fri, 30 Apr 2021 17:12:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F5FC1BF381
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 17:12:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 752C06F939
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 17:12:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EI7QpEZ9cqyC for <devel@linuxdriverproject.org>;
 Fri, 30 Apr 2021 17:12:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B68DD607FE
 for <devel@driverdev.osuosl.org>; Fri, 30 Apr 2021 17:12:46 +0000 (UTC)
IronPort-SDR: 9qYUzkhnJSGpW7i8xkrfLX31EQDoeg1I8dscMS2rHHP4iYLL4aBOS1LiacEYgelsgrF2SwFFqc
 N8CZRntsGxQQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="282674014"
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="282674014"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 10:12:45 -0700
IronPort-SDR: Lz5KIy5ekSzPKCUggg0rlcFyOWTixQPR1m3agrRuwDxHF467cBZ+854Ke9G+zlPChkZfh/y05Q
 sBqbwmlIZRTQ==
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="431532061"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 10:12:44 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with SMTP id EE556203F0;
 Fri, 30 Apr 2021 20:12:41 +0300 (EEST)
Date: Fri, 30 Apr 2021 20:12:41 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Deepak R Varma <drv@mailo.com>
Subject: Re: [PATCH] staging: media: atomisp: pci: reposition braces as per
 coding style
Message-ID: <20210430171241.GJ3@paasikivi.fi.intel.com>
References: <YIwk3KbVGRPJwKa4@dU2104>
 <20210430163327.GI3@paasikivi.fi.intel.com>
 <YIw4pUzTOHV6E9WZ@dU2104>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YIw4pUzTOHV6E9WZ@dU2104>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Deepak,

On Fri, Apr 30, 2021 at 10:34:37PM +0530, Deepak R Varma wrote:
> On Fri, Apr 30, 2021 at 07:33:27PM +0300, Sakari Ailus wrote:
> > Hi Deepak,
> > 
> > If you're touching all these lines, I might do a little more. Please see
> > the comments below.
> > 
> Hello Sakari,
> I can definitely include other changes, but then it will be many different
> types of changes into a single patch. Will that be okay?
> 
> I was planning to address one issue per patch as I think the volume of
> change is going to be high.  I mentioned that in the notes section of the patch
> message.

I think I'd split the patch into smaller chunks if the result becomes too
big but I don't think it's necessary yet.

Splitting different kinds of simple cleanups into several patches takes
longer time to review when they're touching the same piece of code. As the
chunks in these patches have virtually no dependencies to other chunks,
it's fine to do several kinds of cleanups at once.

-- 
Kind regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
