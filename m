Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCF541EC85
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 13:49:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90A4540450;
	Fri,  1 Oct 2021 11:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6QHdEh_fmDt1; Fri,  1 Oct 2021 11:49:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D54A840452;
	Fri,  1 Oct 2021 11:49:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62E311BF5A7
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:49:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id 5206760622
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:49:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id jFQ18bOlblIo for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 11:48:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id E65E96061E
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 11:48:56 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633088939; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=bttwt/gBeucZtbTJvrBvHIv/d1PTWoUeIF2t4CtWbIY=;
 b=Crvc6xiAlc3XdEcDtD7W7IkyKvfWFlso8betPaNSSNpt4vLmtWW/blhsUofPQTbFtCht6p+6
 /y5glDDC4dHAlRXkQCia2ipfbhPDMgF/BKge1wupKfJMScNJL1CKGLl35dPXP4UdLaDYsD5l
 O0wHpYaChohxTwkxgrNMyT2AXZk=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 6156f59947d64efb6d376e97 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 11:48:41
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4CE64C43460; Fri,  1 Oct 2021 11:48:41 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 22C83C4338F;
 Fri,  1 Oct 2021 11:48:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 22C83C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 12/24] wfx: add hif_api_*.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-13-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 14:48:36 +0300
In-Reply-To: <20210920161136.2398632-13-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:24 +0200")
Message-ID: <87wnmxj78r.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgoKPiBG
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBT
aWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5j
b20+CgpbLi4uXQoKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mv
c2lsYWJzL3dmeC9oaWZfYXBpX2dlbmVyYWwuaAo+IEBAIC0wLDAgKzEsMjU2IEBACj4gKy8qIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBBcGFjaGUtMi4wICovCj4gKy8qCj4gKyAqIFdGMjAwIGhh
cmR3YXJlIGludGVyZmFjZSBkZWZpbml0aW9ucwo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIw
MTgtMjAyMCwgU2lsaWNvbiBMYWJvcmF0b3JpZXMgSW5jLgo+ICsgKi8KPiArCj4gKyNpZm5kZWYg
V0ZYX0hJRl9BUElfR0VORVJBTF9ICj4gKyNkZWZpbmUgV0ZYX0hJRl9BUElfR0VORVJBTF9ICj4g
Kwo+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2lmX2V0aGVy
Lmg+CgpJJ20gbG9va2luZyBhdCBzdGFnaW5nLW5leHQgKGNvbW1pdCA0MmNlMzJiMWFlNTQpIHdo
aWxlIHJldmlld2luZyB0aGUKZHJpdmVyIGFuZCB0aGVyZSBJIHNlZToKCiNpZm5kZWYgV0ZYX0hJ
Rl9BUElfR0VORVJBTF9ICiNkZWZpbmUgV0ZYX0hJRl9BUElfR0VORVJBTF9ICgojaWZkZWYgX19L
RVJORUxfXwojaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KI2luY2x1ZGUgPGxpbnV4L2lmX2V0aGVy
Lmg+CiNlbHNlCiNpbmNsdWRlIDxuZXQvZXRoZXJuZXQuaD4KI2luY2x1ZGUgPHN0ZGludC5oPgoj
ZGVmaW5lIF9fcGFja2VkIF9fYXR0cmlidXRlX18oKF9fcGFja2VkX18pKQojZW5kaWYKCkkgZG9u
J3Qga25vdyB3aGF0J3MgY2F1c2luZyB0aGUgZGlmZmVyZW5jZSwgYnV0IHRoYXQgaWZkZWYgX19L
RVJORUxfXwpsb29rcyB1c2VsZXNzLgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcv
cHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5l
bC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
