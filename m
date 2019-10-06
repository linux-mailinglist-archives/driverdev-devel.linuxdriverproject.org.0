Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7B6CD953
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 23:31:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 161E5204FA;
	Sun,  6 Oct 2019 21:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bPFbRXnioepa; Sun,  6 Oct 2019 21:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 04177204D6;
	Sun,  6 Oct 2019 21:31:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 97BEF1BF3BD
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 21:31:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9337E869C9
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 21:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9m5KIqKUgQl2 for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 21:31:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 251C7869B6
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 21:31:15 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.2 #3 (Red Hat
 Linux)) id 1iHE7Q-0005Fd-Tt; Sun, 06 Oct 2019 21:31:09 +0000
Date: Sun, 6 Oct 2019 22:31:08 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: comedi: Capitalize macro name to fix camelcase
 checkpatch warning
Message-ID: <20191006213108.GJ26530@ZenIV.linux.org.uk>
References: <20191006184903.12089-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006184903.12089-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 abbotti@mev.co.uk, olsonse@umich.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 06, 2019 at 07:49:03PM +0100, Jules Irenge wrote:

[mA vs. MA]

Table 5.  SI prefixes
Factor	Name 	Symbol
....
10^6	mega	M
....
10^-3	milli	m

Confusing one for another (especially for electrical units) can be...
spectacular.  FYI, 1mA is more or less what you get if you lick
the terminals of a 9V battery; 1MA is about 30 times the current
in typical lightning strike...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
