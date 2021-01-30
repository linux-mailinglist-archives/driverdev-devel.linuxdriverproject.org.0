Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8B5309764
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 18:54:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 252EB87260;
	Sat, 30 Jan 2021 17:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QTKTe7EwzqAv; Sat, 30 Jan 2021 17:54:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 82A2F87231;
	Sat, 30 Jan 2021 17:54:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9CC541BF4D7
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 17:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 926D3869A7
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 17:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zCoZ+F-TAPQg for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 17:54:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC949868C5
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 17:54:25 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94) (envelope-from <johannes@sipsolutions.net>)
 id 1l5uRv-00Diei-KX; Sat, 30 Jan 2021 18:54:19 +0100
Message-ID: <fe92d9783a3cde70cab41f12ef7fda65b8a74b60.camel@sipsolutions.net>
Subject: Re: [PATCH v2] staging: wimax/i2400m: fix pointer declaration style
From: Johannes Berg <johannes@sipsolutions.net>
To: Anirudh Rayabharam <mail@anirudhrb.com>, gregkh@linuxfoundation.org, 
 arnd@arndb.de, kuba@kernel.org
Date: Sat, 30 Jan 2021 18:54:18 +0100
In-Reply-To: <20210130174454.11810-1-mail@anirudhrb.com>
References: <20210130174454.11810-1-mail@anirudhrb.com>
User-Agent: Evolution 3.36.5 (3.36.5-2.fc32) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2021-01-30 at 23:14 +0530, Anirudh Rayabharam wrote:
> Fix a couple of pointer declarations where the pointer qualifier '*'
> is not attached to the variable name. This fixes the checkpatch
> error: "foo * bar" should be "foo *bar".

This driver is in staging to get deleted unless somebody really wants to
step up and maintain wimax, so there's no point in fixing up whitespace.

johannes

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
