Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D95B73D34CE
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Jul 2021 08:45:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 094C482998;
	Fri, 23 Jul 2021 06:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1yvM_PMMiJNw; Fri, 23 Jul 2021 06:45:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4817982A28;
	Fri, 23 Jul 2021 06:45:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 882661BF5E0
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 06:45:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7424F81BFA
 for <devel@linuxdriverproject.org>; Fri, 23 Jul 2021 06:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qNAHeDAGegLx for <devel@linuxdriverproject.org>;
 Fri, 23 Jul 2021 06:45:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D8C4819F6
 for <devel@driverdev.osuosl.org>; Fri, 23 Jul 2021 06:45:17 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 6F1325C0158;
 Fri, 23 Jul 2021 02:45:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Fri, 23 Jul 2021 02:45:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=X5xr8e+KoIfokOs+HQGYJ7g9t86
 HbY4x2Os0/wIYqwY=; b=zwEAn+DxB2gojWkMz3NO4lnm7jmTRdUprVli3TkCIVC
 hSHQP5dWO+M22UEutlxPpkOvbhtk2/eQFyqHsO++3IcFCNwKwJk+QdSh8TuTTfEs
 Ofv+8j7KY9a4ccQB7VIErrJ3rgEFBoh5BE6ZODD2MXPl6EtIb6T4iQcDGqbgvhdO
 eSd6AMMwtXehWiKLmQxOdtE10Hw5EkudJZiXgov+nYWElt3wpze3P1q1umoawZag
 um0sumX0PS+o4YpslBvjw1kZ8Edxk6Fvn8EqFVoArs+3nzbxHM5gPR43kCKapvSC
 TkRB0lE/zooQk10Thp0d83wmNhwCMPZ9JOvJULNueyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=X5xr8e
 +KoIfokOs+HQGYJ7g9t86HbY4x2Os0/wIYqwY=; b=AINFSgqPLk1fa6PwRbTJB0
 1NqaO3HXxBsz+8QTLz58a7S7TFaQ5p9ZiKiBLM11t5C++Xd41hrmn2OUZzs6XRnS
 hhfxnz4eU6nNn8Ef03rCdsrjlYbuNeEfjgphMH3lyn6lrHYh8+nIJKxdUYJCgOMn
 sVdhdVPSebDvvSRU5JJzWgD+/YDg2A9VFy4CQ8XbST+GhHVWmo2Ov4sH9JMXh8ul
 Q7tZ1E1lNfBuvAX5lW9URQ0+yx5Nm5HDwKTQwT4M9hRB4qSridnZDAwWA26OtISY
 6/g6YaDGnIOY26FmkUCls+MnjfgCzQ6SsYMsfJunqYB/8Le7DxfifcVKGxss7WAg
 ==
X-ME-Sender: <xms:eGX6YE_6bO1XrGuGoi26lGkhJFbos8O3TVdPAcDdmpYvGMW21fCpkA>
 <xme:eGX6YMupE4vC3NSmeVVu5MIMNzqAM2qIrOkwlR3rhuN5cKW9hFkK7Yxxpa_zumA7X
 F4-6oXdKpNdZg>
X-ME-Received: <xmr:eGX6YKAFcGrp3nlcKOzw-SMoaX3D_hQ6SXyC1djAEmjcwmpXYpuavF1w-DCFT8dtcfhyeSPkNS1USnl8by47OVNkHyC5ETLF>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeejgddutdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtro
 dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
 necuggftrfgrthhtvghrnhepveehgfejiedtffefhfdvgeelieegjeegieffkeeiffejfe
 elhfeigeethfdujeeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:eGX6YEeRIysuub-XI7JrvQ0jBzrx7bcf9chj6D2yDP5f2WwuqXM5xg>
 <xmx:eGX6YJNpYg4gg6vU_y5RdLa_mViaBPpu_MdBICVq_vl35d1lza_s2Q>
 <xmx:eGX6YOmhK9nx2-tKxc6IxBkEQIgrpb4roDuJQDNYMLUbZSkcK9ri9Q>
 <xmx:eWX6YFCR2dmJMrhXXOO35GR42UypfFcjQv8UJRG_NL6eCaR2vhAwJg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 23 Jul 2021 02:45:12 -0400 (EDT)
Date: Fri, 23 Jul 2021 08:45:08 +0200
From: Greg KH <greg@kroah.com>
To: vpuh1 <baxtiarovartem@gmail.com>
Subject: Re: [PATCH] Drivers: comedi: Lindented files.
Message-ID: <YPpldJCdVLfwHKhn@kroah.com>
References: <20210722210927.GA41649@ideapad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210722210927.GA41649@ideapad>
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
Cc: devel@driverdev.osuosl.org, gregkh@suse.de, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 23, 2021 at 12:09:27AM +0300, vpuh1 wrote:
> Indented files in drivers/comedi directory using scripts/Lindent.
> 
> Signed-off-by: Artem Baxtiarov <baxtiarovartem@gmail.com>

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch contains warnings and/or errors noticed by the
  scripts/checkpatch.pl tool.

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

- It looks like you did not use your "real" name for the patch on either
  the Signed-off-by: line, or the From: line (both of which have to
  match).  Please read the kernel file, Documentation/SubmittingPatches
  for how to do this correctly.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
