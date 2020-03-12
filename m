Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BB21833E8
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 15:58:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2BEE86D6A;
	Thu, 12 Mar 2020 14:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TsWDNIbNwvPx; Thu, 12 Mar 2020 14:58:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E914B86CF8;
	Thu, 12 Mar 2020 14:58:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE6931BF420
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 14:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E7E6C880D5
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 14:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FeDXjrAaLPoM for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 14:58:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1C070877F2
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 14:58:07 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id n13so3293264lfh.5
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 07:58:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MdykorgHJ2m1Uy++8it61ejlAV2pQD4rRbpkRh1crhg=;
 b=oHF6HQpC5e9vLwSjdrquenvFa6cG3/4+8mEc6wiredTBXElqYV9NTj7haH1AmwrrnF
 N4EuOuATK3xQaO62QpVoDQpS12Bmx3e1PVedoadh5HVhRtoX07Vcsq0wAECFCph80qtm
 Ts3cDDAnxLDzSssRyk+181fzow5ms6gL7Q9+aaVcy+BItMxcoXtMKwBGLtX4w/gKno55
 lzjx8o59ctchw6hyZt1d+0hTkH/PMEOb4Duie/fRE7TtaMTXt2aOhh5QpCml5ZlKnmUr
 sGFf5wf+5GC7RicyvYemGFz/dsrGsvOFvKCaGesRoMYhcYdwRZv3oClpqhMRRUfvOBBD
 MbLQ==
X-Gm-Message-State: ANhLgQ3PGVuvsHCYSz1HzCRau61qB2bIveELRuhhT75xBCQCxG27EaLj
 GX+EX7l6Wz6gEmQrLrGI8xM=
X-Google-Smtp-Source: ADFU+vv44HF48yUbUtrQ6zG8TaNfTSOFBGd0BXJrP42WUadY2hV8NAqUZ171tik/AK9rVOjZWZ3Atg==
X-Received: by 2002:a19:4354:: with SMTP id m20mr1522861lfj.166.1584025085350; 
 Thu, 12 Mar 2020 07:58:05 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id j82sm15371068lfj.14.2020.03.12.07.58.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 07:58:04 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1jCPHV-00027Q-N7; Thu, 12 Mar 2020 15:57:53 +0100
Date: Thu, 12 Mar 2020 15:57:53 +0100
From: Johan Hovold <johan@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: greybus: Use scnprintf() for avoiding potential
 buffer overflow
Message-ID: <20200312145753.GS14211@localhost>
References: <20200311091906.22980-1-tiwai@suse.de>
 <20200311095814.GI14211@localhost> <20200312145111.GO11561@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312145111.GO11561@kadam>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Takashi Iwai <tiwai@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 12, 2020 at 05:51:11PM +0300, Dan Carpenter wrote:
> On Wed, Mar 11, 2020 at 10:58:14AM +0100, Johan Hovold wrote:
> > On Wed, Mar 11, 2020 at 10:19:06AM +0100, Takashi Iwai wrote:
> > > Since snprintf() returns the would-be-output size instead of the
> > > actual output size, the succeeding calls may go beyond the given
> > > buffer limit.  Fix it by replacing with scnprintf().
> > > 
> > > Signed-off-by: Takashi Iwai <tiwai@suse.de>
> > > ---
> > >  drivers/staging/greybus/tools/loopback_test.c | 24 ++++++++++++------------
> > 
> > Thanks for the fix.
> > 
> > Would you mind resending with a "staging: greybus: loopback_test:"
> > prefix since this is not a subsystem wide issue, bur rather a bug in a
> > specific user-space tool?
> 
> I'm surprised that user-space even has scnprintf().

Yeah, see the rest of the thread.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
