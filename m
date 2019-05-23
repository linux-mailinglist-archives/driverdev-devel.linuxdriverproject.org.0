Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A41127BDB
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 13:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB2C5877C7;
	Thu, 23 May 2019 11:36:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gXs7-5FS68L7; Thu, 23 May 2019 11:36:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9B6D876F0;
	Thu, 23 May 2019 11:36:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 86FCB1BF422
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 83E228763E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 11:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yx4Jbr3csD8c for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 11:36:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6401387528
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 11:36:35 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id d8so4133447lfb.8
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 04:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nikanor-nu.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6QiCsrho382mVfN9QoMcKC8bcTWEDEiAa9/EpPshWZI=;
 b=pDlCeVS9exGipdSjuhH11kdXCHpgAp/d76d939LbnDhCOvMvVrryam02jBgRsoZpVL
 Drl9xXZ+6J9OuuwgCk7wz0Qt/8NZJmxZ3iYwpOnOGV+7XqwDJA2T+xl+xY7RWB1OkCT/
 6aqBSwinL66YB8yQTsQ1OkdmUyhPHBNwXwcFksn9mnbBkPGokmFWtiijLLtpt3uH768A
 om+0aEZHEvYM2e8S2CA+SQO7gV7P2reFkBTupEgatDrP8ALubNx13rgiBirDp29cha4c
 HTo1cMwmHPada9dsUiZP10jj9DDuqE+z1AQ50GEFeN63HJnh99PbVUNPyIj2zkvq7/nD
 RqcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6QiCsrho382mVfN9QoMcKC8bcTWEDEiAa9/EpPshWZI=;
 b=YrON8QH9Eegqc/VC7kZRs7z26Ee48EK0k6DLxWZKf1jBAHzNmHd2/iM5Y8WT4hOtdQ
 F8QjIlPPHnDxKbS+A+4W2Vclc9LoCIsAf0gHGFN8TBlkY2QsyW9Nerh2FtnhQk8V2AnI
 zO+B0epwmTsr9gR9bFsINVMmDl4Kb8O5im513dH4+FrBf5sI7Do9/ahU3VVcRJvQZlqu
 IVgsumWhFlkIOXyd0hgmO0VE+wA7o+T8870cAPcfONGsBoaJPcGZbrnV2OVligJTOMdy
 TZTCevJKKV0XY193m87bnpzP9nnasEO0WkhKBl80BMOr6tKIuqLN11rI8jfdmxHOjeaK
 Heyg==
X-Gm-Message-State: APjAAAXQdmFCpFz50LCnsAA9ZvnQOtguX1B2kKjiIqxwtd87AejlTs7Y
 WKPidBZPyvtMvVgUazpgGfhGWQ==
X-Google-Smtp-Source: APXvYqzqAb4IBQARyp9SkNwQ0znYVC7QGSn/jZSJlCPeM2voiYM2+zejwW+FjWOpQFKKBQNfZq0qFw==
X-Received: by 2002:a19:2005:: with SMTP id g5mr8702206lfg.157.1558611393498; 
 Thu, 23 May 2019 04:36:33 -0700 (PDT)
Received: from dev.nikanor.nu (78-72-133-4-no161.tbcn.telia.com. [78.72.133.4])
 by smtp.gmail.com with ESMTPSA id d68sm5269287lfg.23.2019.05.23.04.36.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 04:36:32 -0700 (PDT)
From: =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/8] staging: kpc2000: add missing asterisk in comment
Date: Thu, 23 May 2019 13:36:08 +0200
Message-Id: <20190523113613.28342-4-simon@nikanor.nu>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523113613.28342-1-simon@nikanor.nu>
References: <20190523113613.28342-1-simon@nikanor.nu>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com, simon@nikanor.nu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rml4ZXMgY2hlY2twYXRjaC5wbCBlcnJvciAiY29kZSBpbmRlbnQgc2hvdWxkIHVzZSB0YWJzIHdo
ZXJlIHBvc3NpYmxlIi4KClNpZ25lZC1vZmYtYnk6IFNpbW9uIFNhbmRzdHLDtm0gPHNpbW9uQG5p
a2Fub3IubnU+Ci0tLQogZHJpdmVycy9zdGFnaW5nL2twYzIwMDAva3BjMjAwMC9jZWxsX3Byb2Jl
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUu
YyBiL2RyaXZlcnMvc3RhZ2luZy9rcGMyMDAwL2twYzIwMDAvY2VsbF9wcm9iZS5jCmluZGV4IDdi
ODUwZjNlODA4Yi4uYzQwMTVjNjI2ODZmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcva3Bj
MjAwMC9rcGMyMDAwL2NlbGxfcHJvYmUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcva3BjMjAwMC9r
cGMyMDAwL2NlbGxfcHJvYmUuYwpAQCAtMjUsNyArMjUsNyBAQAogICogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEQgICAgICAgICAg
ICAgICAgICAgQzJTIERNQSBQcmVzZW50CiAgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERERCAgICAgICAgICAgICAgICBDMlMg
RE1BIENoYW5uZWwgTnVtYmVyICAgIFt1cCB0byA4IGNoYW5uZWxzXQogICogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJSSAg
ICAgICAgICAgICAgSVJRIENvdW50IFswIHRvIDMgSVJRcyBwZXIgY29yZV0KLSAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAxMTExMTExMDAwCisgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgMTExMTExMTAwMAogICogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElJSUlJ
SUkgICAgICAgSVJRIEJhc2UgTnVtYmVyIFt1cCB0byAxMjggSVJRcyBwZXIgY2FyZF0KICAqICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgX19fICAgIFNwYXJlCiAgKgotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
