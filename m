Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CDB18ED8A
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 02:04:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F1E08787C;
	Mon, 23 Mar 2020 01:04:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPVs7H57gEoQ; Mon, 23 Mar 2020 01:04:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D39087831;
	Mon, 23 Mar 2020 01:04:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45B461BF401
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 01:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 418DB86C80
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 01:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v+GxHf7rrWHn for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 01:04:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [216.205.24.74])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4AEE586C4A
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 01:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584925483;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aG1HR6vnX9d/puzieVgxoR5+qeHzgld0YjOlInXM12g=;
 b=LD++SuMv10RwYBDj1gQIezbJWyURhrso8rcrcNwZmBJcTC454eEXcY+duP3bQmGd0vIzJD
 wTj/6PwpTmRYPsgwbTMU1hbVJSIiXD0SQNrutBXVSC+crVAsXoe8ISLcPXIwn7P15GzE9S
 ba0aLQoG/D8Nz9TEZBdjq+2M/un9cFU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-gkMjLTdKPYCXVIHRwbB7lA-1; Sun, 22 Mar 2020 21:04:40 -0400
X-MC-Unique: gkMjLTdKPYCXVIHRwbB7lA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 25360107ACCC;
 Mon, 23 Mar 2020 01:04:38 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E23960BF1;
 Mon, 23 Mar 2020 01:04:33 +0000 (UTC)
Date: Mon, 23 Mar 2020 02:04:25 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 01/11] Staging: rtl8188eu: hal_com:
 Add space around operators
Message-ID: <20200323020425.62dbeebb@elisabeth>
In-Reply-To: <f2b4f7f38a8a490ffc917f7199099ac95656c8c2.camel@gmail.com>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
 <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>
 <20200322112744.GC75383@kroah.com>
 <e40d49aaa96a61019804255c2990d229b2eef7dc.camel@perches.com>
 <f2b4f7f38a8a490ffc917f7199099ac95656c8c2.camel@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 Joe Perches <joe@perches.com>, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Shreeya,

On Mon, 23 Mar 2020 04:48:08 +0530
Shreeya Patel <shreeya.patel23498@gmail.com> wrote:

> On Sun, 2020-03-22 at 08:09 -0700, Joe Perches wrote:
> > On Sun, 2020-03-22 at 12:27 +0100, Greg KH wrote:  
> 
> Hi Greg and Joe,
> 
> > > On Sun, Mar 22, 2020 at 03:51:13AM +0530, Shreeya Patel wrote:  
> > > > Add space around operators for improving the code
> > > > readability.
> > > > Reported by checkpatch.pl
> > > > 
> > > > git diff -w shows no difference.
> > > > diff of the .o files before and after the changes shows no
> > > > difference.  
> > > 
> > > There is no need to have these two lines on every changelog comment
> > > in
> > > this series :(  
> >   
> Yes I get that.
> 
> > In my opinion, there's no need for a series here.
> > 
> > Whitespace only changes _should_ be done all at once.
> > 
> > Whitespace changes _could_ have changed string constants.
> > 
> > So noting that the patch in only whitespace and that
> > there isn't a difference in object files is useful as
> > it shows any change has been compiled and tested.
> >   
> 
> Joe, I feel the same thing, there is no need of a patch series
> for it but I was given a suggestion that it becomes difficult for the
> reviewers to review the patch so it is good to send a patchset instead.

In this case, reviewing the 224 lines you're touching in one shot feels
the same as reviewing them over 11 patches, as the change is always of
the same type. Maybe a single patch is actually even a bit quicker to
review.

Are you sure the suggestion was referring to this, and it wasn't about
different type of changes in the same patch?

-- 
Stefano

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
