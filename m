Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C1E1BA926
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 17:49:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9765B860B2;
	Mon, 27 Apr 2020 15:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CVWbgp1qY-Cj; Mon, 27 Apr 2020 15:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78E1A85FFC;
	Mon, 27 Apr 2020 15:49:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22EBC1BF35E
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 15:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1FC8F87E2E
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 15:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sHqB8m1coQg1 for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 15:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AB3C987E14
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 15:49:29 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4388E20661;
 Mon, 27 Apr 2020 15:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588002569;
 bh=XdgBlxAK5lKNtXaEHrrDUXPAQyDBjlt7+S6BvSx/T60=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yedYM2eNs4wVNJCUIkOc6nDMCNINGso8TUjWAR4Npb0/yqm5QYWl8gEzSRMQW5AXj
 8TuhE0o7mo753OEhTMNkjCLhC7p7oLVZuPlS/iIbDR7hJcoQ+xMArX9GjJvWMxVuP/
 wRqqpxMLf1IpPmP+Kdxf9G9OZp3tjT1qWoTpIio4=
Date: Mon, 27 Apr 2020 11:49:13 -0400
From: Sasha Levin <sashal@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Subject: Re: exfat upcase table for code points above U+FFFF (Was: Re:
 [PATCH] staging: exfat: add exfat filesystem code to staging)
Message-ID: <20200427154913.GR13035@sasha-vm>
References: <20190829233506.GT5281@sasha-vm>
 <20190830075647.wvhrx4asnkrfkkwk@pali>
 <20191016140353.4hrncxa5wkx47oau@pali>
 <20191016143113.GS31224@sasha-vm>
 <20191016160349.pwghlg566hh2o7id@pali>
 <20191016203317.GU31224@sasha-vm>
 <20191017075008.2uqgdimo3hrktj3i@pali>
 <20200213000656.hx5wdofkcpg7aoyo@pali>
 <20200213211847.GA1734@sasha-vm>
 <20200421213045.skv2dvgm3xuspbl7@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421213045.skv2dvgm3xuspbl7@pali>
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>, linux-fsdevel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 21, 2020 at 11:30:45PM +0200, Pali Roh=E1r wrote:
>On Thursday 13 February 2020 16:18:47 Sasha Levin wrote:
>> On Thu, Feb 13, 2020 at 01:06:56AM +0100, Pali Roh=E1r wrote:
>> > In released exFAT specification is not written how are Unicode code
>> > points above U+FFFF represented in exFAT upcase table. Normally in
>> > UTF-16 are Unicode code points above U+FFFF represented by surrogate
>> > pairs but compression format of exFAT upcase table is not clear how to
>> > do it there.
>> >
>> > Are you able to send question about this problem to relevant MS people?
>> >
>> > New Linux implementation of exfat which is waiting on mailing list just
>> > do not support Unicode code points above U+FFFF in exFAT upcase table.
>>
>> Sure, I'll forward this question on. I'll see if I can get someone from
>> their team who could be available to answer questions such as these in
>> the future - Microsoft is interested in maintaining compatiblity between
>> Linux and Windows exFAT implementations.
>
>Hello Sasha! Have you got any answer from exfat MS team about upcase
>table for Unicode code points above U+FFFF?

Sorry for taking so long. This is my understanding from the Windows
folks: Windows filesystems just don't support variable encoding length,
and expect UCS-2 strings.

-- =

Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
