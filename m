Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9550519E6FF
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Apr 2020 20:15:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2E0D878BB;
	Sat,  4 Apr 2020 18:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GAzGfIk08nhu; Sat,  4 Apr 2020 18:15:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F11887855;
	Sat,  4 Apr 2020 18:15:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 185A71BF368
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 18:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1497B87864
 for <devel@linuxdriverproject.org>; Sat,  4 Apr 2020 18:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ktvWKh7gqKb for <devel@linuxdriverproject.org>;
 Sat,  4 Apr 2020 18:15:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx.sdf.org (mx.sdf.org [205.166.94.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B469587855
 for <devel@driverdev.osuosl.org>; Sat,  4 Apr 2020 18:15:43 +0000 (UTC)
Received: from sdf.org (IDENT:lkml@faeroes.freeshell.org [205.166.94.9])
 by mx.sdf.org (8.15.2/8.14.5) with ESMTPS id 034IFgcI029629
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits) verified NO);
 Sat, 4 Apr 2020 18:15:42 GMT
Received: (from lkml@localhost)
 by sdf.org (8.15.2/8.12.8/Submit) id 034IFfdc000897;
 Sat, 4 Apr 2020 18:15:41 GMT
Date: Sat, 4 Apr 2020 18:15:41 +0000
From: George Spelvin <lkml@SDF.ORG>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3] staging: wilc1000: Use crc7 in lib/ rather than a
 private copy
Message-ID: <20200404181541.GC11944@SDF.ORG>
References: <20200326152251.19094-1-ajay.kathat@microchip.com>
 <20200402082745.GG2001@kadam> <20200402153034.GB2013@SDF.ORG>
 <20200403091029.GC2001@kadam> <20200403234028.GA11944@SDF.ORG>
 <20200404172537.GI2066@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200404172537.GI2066@kadam>
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
Cc: devel@driverdev.osuosl.org, lkml@sdf.org, Ajay.Kathat@microchip.com,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 04, 2020 at 08:25:37PM +0300, Dan Carpenter wrote:
> On Fri, Apr 03, 2020 at 11:40:28PM +0000, George Spelvin wrote:
>> I understand that it's addressed more to patch authors than
>> maintainers forwarding them, but I've read that thing a dozen times,
>> and the description of S-o-b always seemed to be about copyright.
> 
> It's to say that you didn't add anything which you shouldn't have, for
> example, secret SCO UnixWare stuff.

Yes, I'm familiar with the (irritating) history.  Which is why I
had the idea stuck in my head that that it was all about copyright
and if you didn't add anything copyrightable, an S-o-b wasn't
required.  No more than I'd ask for one from the administrator
of the e-mail system which delivered it.

submitting-patches.rst says "sign your work".  It didn't occur to
me to sign something that wasn't my work.

>> So I had assumed that edits which were below the de minimus standard
>> of copyright didn't need a separate S-o-b.
>> 
>> Am I right that there should be an S-o-b from everyone from the
>> patch author to the patch committer (as recorded in git)?  And the
>> one exception is that we don't need S-o-b for git pulls after that,
>> because the merge commits record the information?
> 
> Yes.  Also if people added their S-o-b for git merges it would change
> the git hash for the patch which would suck.

I understand the technical difficulties, but lawyers aren't always
deterred by such things. :-)  Seriously, it's clear there has to
be an exception; the question was about the scope of the exception.

Thank you for your patience clarifying this stuff for the nth time.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
