Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 967C482FDBF
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jan 2024 00:31:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EAD6A83955;
	Tue, 16 Jan 2024 23:31:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAD6A83955
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nTXc87X6udh9; Tue, 16 Jan 2024 23:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E748683984;
	Tue, 16 Jan 2024 23:31:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E748683984
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9D2D1BF33E
 for <devel@linuxdriverproject.org>; Tue, 16 Jan 2024 23:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B839983AAC
 for <devel@linuxdriverproject.org>; Tue, 16 Jan 2024 23:31:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B839983AAC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNQXBHm5dWpc for <devel@linuxdriverproject.org>;
 Tue, 16 Jan 2024 23:31:09 +0000 (UTC)
X-Greylist: delayed 2065 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 16 Jan 2024 23:31:09 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FC8A83A66
Received: from mjhoster.net (mjhoster.net [IPv6:2a0c:b641:780:acef:c1::ae0b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1FC8A83A66
 for <devel@driverdev.osuosl.org>; Tue, 16 Jan 2024 23:31:08 +0000 (UTC)
Received: from [10.38.14.8] (unknown [169.150.197.76])
 (Authenticated sender: info@mjhoster.net)
 by srv1.mjhoster.net (Postfix) with ESMTPSA id 273392A3EDE;
 Wed, 17 Jan 2024 00:52:09 +0200 (EET)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Spendenzweck
To: Recipients <info@mjhoster.net>
From: Mikhail Fridman<info@mjhoster.net>
Date: Tue, 16 Jan 2024 23:52:00 +0100
Message-Id: <20240116233110.B839983AAC@smtp1.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mjhoster.net; s=default; t=1705445541;
 h=from:from:reply-to:reply-to:subject:subject:date:date:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=D5FAY0Ur84IE8/cEheOkPWDZ754y/vDWrhUTxah3deY=;
 b=KsMWyyocGLNYIF+z687o/mKmukTgZuEfza2el3Sh3ZtCV9vr1o+gDL4GdwbAt4fUajM5tM
 mFimgsOGnECHZF1T+GE0WX2AOs1yCwrZu5KpqWwvOPX12Hp8o8LnyMfIZMLPnGnmQKwQ87
 fJ1Uej0P+GgVmBwfJRo1Z3uygJmo3KyhmG/VQ/eRJIkFlYxqURJfDsnizvlY5Qk7nO4vqN
 YsIoaY6eKDjMAv/+JHNwrIeV79NMmVodO56Zo5tSeDpl2c+uTtIfA4CchdCe02nywURdvF
 iTTYB7B1hJwWPG3G6zoCxPvuIVlzFrKBq7GPJwWNgyrx+1nUgusO7miZc63IHg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=mjhoster.net header.i=@mjhoster.net
 header.a=rsa-sha256 header.s=default header.b=KsMWyyoc
X-Mailman-Original-Authentication-Results: srv1.mjhoster.net;
 auth=pass smtp.auth=info@mjhoster.net smtp.mailfrom=info@mjhoster.net
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
Reply-To: alfagroupfridman@outlook.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hallo, ich m=F6chte 2.500.000 Euro an Ihre Wohlt=E4tigkeitsorganisation spe=
nden, was Teil meiner Investition ist. Bitte geben Sie in Ihrer Antwort wei=
tere Informationen zu Ihrem Anspruch an.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
