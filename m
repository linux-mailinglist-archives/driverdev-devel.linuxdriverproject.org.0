Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 555EC164F4F
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 20:57:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D672986A0B;
	Wed, 19 Feb 2020 19:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v1mg+7A9V6+R; Wed, 19 Feb 2020 19:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A460083D1A;
	Wed, 19 Feb 2020 19:57:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 225591BF2FA
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 19:57:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1CB66840A3
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 19:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6DewnlxcvqEg for <devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 19:57:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0622C83D1A
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 19:56:59 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id gv17so520631pjb.1
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 11:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=a7yW3eGud1nSB17w6PgcUOM+BLtId9z+DBtjQPe4XL0=;
 b=r/l08eDzR96yyXbytmobJW2Bl/fPaohWkVNzuCsnrvjhVcAb6GheysMrymn9aLAksW
 heGi5eeX4ymS+7fQqjPVdqR3W+0teRBB14DV4TJArI5VmU1ClW+cC/rqNQ8SyY4O3z/M
 X/cPNzvMGkj+IfvKrMCHh2nMWM1LIpEVitkwZeZaZUusIrLQdZQ2phfNKYqhW3qt7/iY
 rf79KBtXefhjbHADz0i4mZ+ROJtY1qJ1M8Vn5syeAk1QjZzOGln6i5hpbNgHQHPztRrf
 BsdMfEPmcoclw0n7l9rYCMJJmvylvV8paInd5zRQJ37e5ogoA3FOJvpC/DAl9fRmza5m
 thQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=a7yW3eGud1nSB17w6PgcUOM+BLtId9z+DBtjQPe4XL0=;
 b=DSNIKNEg5Kr3e/pe5wlUUhJEGvrEq1pG+3Jcl2OH4BZtG8ecEVtd20xNjSBGj+UME5
 UGnHWJOrV/0I537iMQD41YFG6jNqE9SOKnLWwbzBWVnxYqvOJZNVE5vqDxZJHn7GIiIv
 Ooj3M3T6hhxILjkJzKF6U0sFdoKwdgQPLKjtNctW3+qENFlrXCadklQhVYvuwaPu7PYg
 rwgrNh0GV3MfvK53h7DDQbaqZKW+SnBVQhd6YhfoGlqP0c0Qtc7pLjFsRPrdhjizhxpt
 1Az+0ekLuUJxpYZUixnB3xiai7JaEiVOxL1iLQbFJ70zrPENfECAnr55h28LQPj1lKgz
 jpVQ==
X-Gm-Message-State: APjAAAUjghR9dkyoa21LYdWEf0hQMobvyTfpFyFLIS0KGiZZEmmEXIHN
 mBEbzEperqflyKXjseCKx3Ry8g==
X-Google-Smtp-Source: APXvYqxwuzVnh9ab7+j2hcebiGY8l+/eJsMFxnHM0mMZAQQEbpFy2cBwB1vsrtm/7WJQHXpNqIW4FA==
X-Received: by 2002:a17:90a:20aa:: with SMTP id
 f39mr10917261pjg.35.1582142218933; 
 Wed, 19 Feb 2020 11:56:58 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.172])
 by smtp.gmail.com with ESMTPSA id t189sm422306pfd.168.2020.02.19.11.56.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Feb 2020 11:56:58 -0800 (PST)
Date: Thu, 20 Feb 2020 01:26:51 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>,
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: greybus: match parenthesis alignment
Message-ID: <20200219195651.GA485@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch.pl warning of alignment should match open parenthesis in
audio_codec.c

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/greybus/audio_codec.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 08746c85dea6..d62f91f4e9a2 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -70,7 +70,7 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_register_cport(data->connection,
-						i2s_port, cportid,
+							i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_TX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
@@ -160,7 +160,7 @@ static int gbaudio_module_disable_tx(struct gbaudio_module_info *module, int id)
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_unregister_cport(data->connection,
-						i2s_port, cportid,
+							  i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_TX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
@@ -205,7 +205,7 @@ static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_register_cport(data->connection,
-						i2s_port, cportid,
+							i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_RX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
@@ -295,7 +295,7 @@ static int gbaudio_module_disable_rx(struct gbaudio_module_info *module, int id)
 		i2s_port = 0;	/* fixed for now */
 		cportid = data->connection->hd_cport_id;
 		ret = gb_audio_apbridgea_unregister_cport(data->connection,
-						i2s_port, cportid,
+							  i2s_port, cportid,
 						AUDIO_APBRIDGEA_DIRECTION_RX);
 		if (ret) {
 			dev_err_ratelimited(module->dev,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
