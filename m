Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4905841EC7D
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 13:46:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29002406F3;
	Fri,  1 Oct 2021 11:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aKWVQ_aad2RZ; Fri,  1 Oct 2021 11:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5979E406E5;
	Fri,  1 Oct 2021 11:46:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 293101BF5A7
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:46:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id 25AAF843A3
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 11:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id 0dj-hZ_oOsSM for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 11:46:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id A5BE584186
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 11:46:00 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633088762; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=YxKSm706CYmC7dlY4TeabSYZk/p/Y9Jzdo8dW/FTdPs=;
 b=NXgLnKvLUYnldAnwRIKhqv4uyOJfMT3dqIiqhq3ifpdwYP5xwPcQw7+W7J2LWagurtUaOc7t
 FdDkJyOzCuEtmYndEvK9oTnGstTfJieEEyEc1pF90UkJcWj1OLEQwqQtetxAO6KLfG2jHL8+
 M2Lpvh7fldA0u8XOUDc15OGx3Sw=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-east-1.postgun.com with SMTP id
 6156f4f29ffb4131496c0bec (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 01 Oct 2021 11:45:54
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CA3E8C43618; Fri,  1 Oct 2021 11:45:53 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1ABFDC43460;
 Fri,  1 Oct 2021 11:45:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 1ABFDC43460
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v7 12/24] wfx: add hif_api_*.h
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <20210920161136.2398632-13-Jerome.Pouiller@silabs.com>
Date: Fri, 01 Oct 2021 14:45:42 +0300
In-Reply-To: <20210920161136.2398632-13-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Mon, 20 Sep 2021 18:11:24 +0200")
Message-ID: <871r55kly1.fsf@codeaurora.org>
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
b20+CgpbLi4uXQoKPiArI2RlZmluZSBISUZfU1RBVFVTX1NVQ0NFU1MgICAgICAgICAgICAgICAg
ICAgICAgICAgKGNwdV90b19sZTMyKDB4MDAwMCkpCj4gKyNkZWZpbmUgSElGX1NUQVRVU19GQUlM
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIChjcHVfdG9fbGUzMigweDAwMDEpKQo+ICsjZGVm
aW5lIEhJRl9TVEFUVVNfSU5WQUxJRF9QQVJBTUVURVIgICAgICAgICAgICAgICAoY3B1X3RvX2xl
MzIoMHgwMDAyKSkKPiArI2RlZmluZSBISUZfU1RBVFVTX1dBUk5JTkcgICAgICAgICAgICAgICAg
ICAgICAgICAgKGNwdV90b19sZTMyKDB4MDAwMykpCj4gKyNkZWZpbmUgSElGX1NUQVRVU19VTktO
T1dOX1JFUVVFU1QgICAgICAgICAgICAgICAgIChjcHVfdG9fbGUzMigweDAwMDQpKQo+ICsjZGVm
aW5lIEhJRl9TVEFUVVNfUlhfRkFJTF9ERUNSWVBUICAgICAgICAgICAgICAgICAoY3B1X3RvX2xl
MzIoMHgwMDEwKSkKPiArI2RlZmluZSBISUZfU1RBVFVTX1JYX0ZBSUxfTUlDICAgICAgICAgICAg
ICAgICAgICAgKGNwdV90b19sZTMyKDB4MDAxMSkpCj4gKyNkZWZpbmUgSElGX1NUQVRVU19SWF9G
QUlMX05PX0tFWSAgICAgICAgICAgICAgICAgIChjcHVfdG9fbGUzMigweDAwMTIpKQo+ICsjZGVm
aW5lIEhJRl9TVEFUVVNfVFhfRkFJTF9SRVRSSUVTICAgICAgICAgICAgICAgICAoY3B1X3RvX2xl
MzIoMHgwMDEzKSkKPiArI2RlZmluZSBISUZfU1RBVFVTX1RYX0ZBSUxfVElNRU9VVCAgICAgICAg
ICAgICAgICAgKGNwdV90b19sZTMyKDB4MDAxNCkpCj4gKyNkZWZpbmUgSElGX1NUQVRVU19UWF9G
QUlMX1JFUVVFVUUgICAgICAgICAgICAgICAgIChjcHVfdG9fbGUzMigweDAwMTUpKQo+ICsjZGVm
aW5lIEhJRl9TVEFUVVNfUkVGVVNFRCAgICAgICAgICAgICAgICAgICAgICAgICAoY3B1X3RvX2xl
MzIoMHgwMDE2KSkKPiArI2RlZmluZSBISUZfU1RBVFVTX0JVU1kgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKGNwdV90b19sZTMyKDB4MDAxNykpCj4gKyNkZWZpbmUgSElGX1NUQVRVU19TTEtf
U0VUX0tFWV9TVUNDRVNTICAgICAgICAgICAgIChjcHVfdG9fbGUzMigweDAwNUEpKQo+ICsjZGVm
aW5lIEhJRl9TVEFUVVNfU0xLX1NFVF9LRVlfQUxSRUFEWV9CVVJORUQgICAgICAoY3B1X3RvX2xl
MzIoMHgwMDZCKSkKPiArI2RlZmluZSBISUZfU1RBVFVTX1NMS19TRVRfS0VZX0RJU0FMTE9XRURf
TU9ERSAgICAgKGNwdV90b19sZTMyKDB4MDA3QykpCj4gKyNkZWZpbmUgSElGX1NUQVRVU19TTEtf
U0VUX0tFWV9VTktOT1dOX01PREUgICAgICAgIChjcHVfdG9fbGUzMigweDAwOEQpKQo+ICsjZGVm
aW5lIEhJRl9TVEFUVVNfU0xLX05FR09fU1VDQ0VTUyAgICAgICAgICAgICAgICAoY3B1X3RvX2xl
MzIoMHgwMDlFKSkKPiArI2RlZmluZSBISUZfU1RBVFVTX1NMS19ORUdPX0ZBSUxFRCAgICAgICAg
ICAgICAgICAgKGNwdV90b19sZTMyKDB4MDBBRikpCj4gKyNkZWZpbmUgSElGX1NUQVRVU19ST0xM
QkFDS19TVUNDRVNTICAgICAgICAgICAgICAgIChjcHVfdG9fbGUzMigweDEyMzQpKQo+ICsjZGVm
aW5lIEhJRl9TVEFUVVNfUk9MTEJBQ0tfRkFJTCAgICAgICAgICAgICAgICAgICAoY3B1X3RvX2xl
MzIoMHgxMjU2KSkKCkkgdGhpbmsgaXQncyBhIGJhZCBpZGVhIHRvIHVzZSBjcHVfdG9fbGUzMiBo
ZXJlLiBKdXN0IGRlZmluZSBpbiBjcHUKb3JkZXIgYW5kIHVzZSBjcHVfdG9fbGUzMigpIHdoZW5l
dmVyIHVzaW5nIHRoZXNlIGRlZmluZXMuCgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9y
Zy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2kua2Vy
bmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
