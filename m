Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4356CE8DB
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 18:15:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D75285F87;
	Mon,  7 Oct 2019 16:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2mSfpBr-cVr; Mon,  7 Oct 2019 16:15:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D35485F0F;
	Mon,  7 Oct 2019 16:15:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8D8F1BF44A
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 16:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C36DD85C92
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 16:15:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sl9ZTCxi92w9 for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 16:15:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www17.your-server.de (www17.your-server.de [213.133.104.17])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C7EB85ADF
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 16:15:30 +0000 (UTC)
Received: from sslproxy01.your-server.de ([88.198.220.130])
 by www17.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <thomas@m3y3r.de>)
 id 1iHVfQ-0004KU-TJ; Mon, 07 Oct 2019 18:15:24 +0200
Received: from [2a02:908:4c22:ec00:8ad5:993:4cda:a89f]
 (helo=localhost.localdomain)
 by sslproxy01.your-server.de with esmtpsa
 (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <thomas@m3y3r.de>)
 id 1iHVfQ-00055A-Hj; Mon, 07 Oct 2019 18:15:24 +0200
From: Thomas Meyer <thomas@m3y3r.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: wlan-ng: p80211wep.c: use lib/crc32
References: <20191006140745.9952-1-thomas@m3y3r.de>
 <20191007140900.GX22609@kadam>
Date: Mon, 07 Oct 2019 18:15:23 +0200
In-Reply-To: <20191007140900.GX22609@kadam> (Dan Carpenter's message of "Mon, 
 7 Oct 2019 17:09:00 +0300")
Message-ID: <87lftwy1k4.fsf@m3y3r.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-Authenticated-Sender: thomas@m3y3r.de
X-Virus-Scanned: Clear (ClamAV 0.101.4/25595/Mon Oct  7 10:28:44 2019)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dan Carpenter <dan.carpenter@oracle.com> writes:

> On Sun, Oct 06, 2019 at 04:07:45PM +0200, Thomas Meyer wrote:
>> Use lib/crc32 instead of another implementation.
>> 
>> Signed-off-by: Thomas Meyer <thomas@m3y3r.de>
>
> I always get annoyed whenever anyone asks if people have tested their
> patches, but have you tested this?

no annoynence on my side, but... :-)

Good question. I tell you what I did and then you tell me if I did test!

So I did this: I did write a small C program that does contain a small
byte buffer and the extracted CRC32 logic from the wlan driver.
The program does calculate the CRC32 sum with the extracted logic and by
calling crc32_le function. but values are the same.

But as I don't own the hardware I couldn't do a real test with WEP (as
far as I understand only WEP on this hardware would be affected.)

So a better test would be to find someone which actually owns the
hardware and could test the change.

so... what do you think?

with kind regards
thomas

>It's hard for me to review it
> because I don't have the relevant background and because I'm a little
> bit stupid.
>
> regards,
> dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
