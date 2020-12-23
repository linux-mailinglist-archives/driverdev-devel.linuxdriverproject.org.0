Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7134F2E126A
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 03:24:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0FC442D63B;
	Wed, 23 Dec 2020 02:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a4nxA4DnYxe4; Wed, 23 Dec 2020 02:24:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EDC102CD96;
	Wed, 23 Dec 2020 02:24:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 122941BF990
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 02:24:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 01A3629C87
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 02:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lGP5Db2yZaiS for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 02:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2B1BF2CD96
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 02:24:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F3D9022A83;
 Wed, 23 Dec 2020 02:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608690246;
 bh=UFGOHJZnX8AwPrZdNDlIgkkbhuOJqGlT3OvDbUNJWOQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dBZlGNODG15HCxxAkPTgFSMyDvTw1U20Zy5cVGcJufoHVxUcahL4Wdfz3u0FiMUsD
 W2MfFc6ZR5HLD6LDGUaCB5RViR4OtevYqCZRFGGH97dJypizchnIuNN05Sq+PFb5Zo
 qo+6sFpzFXe62dCiwetbKNDzXU8sy8yQyHF66nF15+YVlCplrIVmJvRw1NXWdxcxFO
 3Iai92BFhfIeZQ8vRCk/ycWL9Q1m6N7d4qbYmpENWU+joYpvYES8PwlmK3HNacOPpA
 JrGDtADMxS2O0S2UmSiyD7Icdx3nHVuzD9qZdNixALAiGMJqM4kjbniN78QOxljunq
 J8XC+CMcwj+NA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 58/66] USB: typec: tcpm: Add a 30ms room for
 tPSSourceOn in PR_SWAP
Date: Tue, 22 Dec 2020 21:22:44 -0500
Message-Id: <20201223022253.2793452-58-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223022253.2793452-1-sashal@kernel.org>
References: <20201223022253.2793452-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Will McVicker <willmcvicker@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Kyle Tso <kyletso@google.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Kyle Tso <kyletso@google.com>

[ Upstream commit fe79d5de77204dd946cfad76a9bec23354b1a500 ]

TCPM state machine needs 20-25ms to enter the ErrorRecovery state after
tPSSourceOn timer timeouts. Change the timer from max 480ms to 450ms to
ensure that the timer complies with the Spec. In order to keep the
flexibility for other usecases using tPSSourceOn, add another timer only
for PR_SWAP.

Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Badhri Jagan Sridharan <badhri@google.com>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Kyle Tso <kyletso@google.com>
Signed-off-by: Will McVicker <willmcvicker@google.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Link: https://lore.kernel.org/r/20201210160521.3417426-5-gregkh@linuxfoundation.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/typec/pd.h   | 1 +
 drivers/staging/typec/tcpm.c | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/typec/pd.h b/drivers/staging/typec/pd.h
index a18ab898fa668..62766585e2f98 100644
--- a/drivers/staging/typec/pd.h
+++ b/drivers/staging/typec/pd.h
@@ -270,6 +270,7 @@ static inline unsigned int rdo_max_power(u32 rdo)
 #define PD_T_DRP_SRC		30
 #define PD_T_PS_SOURCE_OFF	920
 #define PD_T_PS_SOURCE_ON	480
+#define PD_T_PS_SOURCE_ON_PRS	450	/* 390 - 480ms */
 #define PD_T_PS_HARD_RESET	30
 #define PD_T_SRC_RECOVER	760
 #define PD_T_SRC_RECOVER_MAX	1000
diff --git a/drivers/staging/typec/tcpm.c b/drivers/staging/typec/tcpm.c
index 39f99a80daf73..3a2a9d0ba720c 100644
--- a/drivers/staging/typec/tcpm.c
+++ b/drivers/staging/typec/tcpm.c
@@ -2710,7 +2710,7 @@ static void run_state_machine(struct tcpm_port *port)
 			tcpm_set_state(port, ERROR_RECOVERY, 0);
 			break;
 		}
-		tcpm_set_state(port, ERROR_RECOVERY, PD_T_PS_SOURCE_ON);
+		tcpm_set_state(port, ERROR_RECOVERY, PD_T_PS_SOURCE_ON_PRS);
 		break;
 	case PR_SWAP_SRC_SNK_SINK_ON:
 		tcpm_set_state(port, SNK_STARTUP, 0);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
