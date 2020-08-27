Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8E1253ECB
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 09:17:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4693D87AC8;
	Thu, 27 Aug 2020 07:17:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xMc8niBJpbcs; Thu, 27 Aug 2020 07:17:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D8248697D;
	Thu, 27 Aug 2020 07:17:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8BC751BF366
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 07:17:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8475486B30
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 07:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V1pAb6JlilzP for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 07:16:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 889308697D
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 07:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NzD+ydxkPqiBTHP1y2Jm5Uv3WxjO9rjvYkW8EsnnfDg=; b=an/fHdEgKJDXYXK/p/2RZrIXOv
 aRIAX7CN3W0Pp9Yctm/Zh+YuCR0LKfOIqoMQYuMOpDWuTz1uWr5VPwn+oGoxOcqq+tYeEWiBGa4SL
 f0O1rN7bQE5kngr4IShoqKFnulLa+SyK5NiLSgoH5INRigKlQcPFSH6DKfPv53HOxckViozOYxnqd
 geVTTLDzLuBpt5dzzkBxUbhQamiLMWzxHHmgxYdFhMOemrHEvkP7Idkb9mPi+B+TU4BIxaIvu9/Fc
 aFtfK8PDSXyqtHBwDb73NroWCm/9d5IVv8wTOL0Dbv1f4010YULifRJABXVKDo1owCgPIHp7/Wm/Q
 Xq2Yo+Eg==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kBC9W-0006nM-NV; Thu, 27 Aug 2020 07:16:54 +0000
Date: Thu, 27 Aug 2020 08:16:54 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 0/2] staging: android: Remove BUG/BUG_ON from ion
Message-ID: <20200827071654.GB25305@infradead.org>
References: <cover.1598023523.git.tomersamara98@gmail.com>
 <20200825064729.GA30014@infradead.org>
 <20200825065229.GA1319770@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825065229.GA1319770@kroah.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, Tomer Samara <tomersamara98@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Joel Fernandes <joel@joelfernandes.org>,
 Riley Andrews <riandrews@android.com>, Arve Hj?nnev?g <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Laura Abbott <labbott@redhat.com>,
 Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 25, 2020 at 08:52:29AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Aug 25, 2020 at 07:47:29AM +0100, Christoph Hellwig wrote:
> > On Fri, Aug 21, 2020 at 06:27:04PM +0300, Tomer Samara wrote:
> > > Remove BUG/BUG_ON from androind/ion
> > 
> > Please just remove ion.  It has been rejected and we have developed
> > proper kernel subsystens to replace it.  Don't waste your time on it.
> 
> It is going to be removed at the end of this year.  Why we keep it
> around until then, I really don't know, but John and Laura have this as
> the plan.

It keeps getting in the way of various projects and has no path
going upstream properly.  Seems weird to keep this dead and not all
that great code around.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
